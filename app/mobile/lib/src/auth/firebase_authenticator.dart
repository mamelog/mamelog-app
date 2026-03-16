import 'dart:async';

import 'package:core_authenticator/authenticator.dart';
import 'package:core_common/result.dart';
import 'package:core_model/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

@LazySingleton(as: Authenticator)
class FirebaseAuthenticator implements Authenticator {
  FirebaseAuthenticator(
    this._firebaseAuth,
    this._googleSignIn,
  );

  final firebase_auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  static final _log = Logger('FirebaseAuthenticator');

  @override
  Stream<AuthState> get authStateChanges =>
      _firebaseAuth.authStateChanges().map(_mapFirebaseUserToAuthState);

  @override
  User? get currentUser {
    final firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser == null) return null;
    return _mapFirebaseUserToUser(firebaseUser);
  }

  @override
  Future<Result<String>> getIdToken() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return Result.error(Exception('User not authenticated'));
      }
      final token = await user.getIdToken();
      if (token == null) {
        return Result.error(Exception('Failed to get ID token'));
      }
      return Result.ok(token);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<void>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return Result.error(Exception('Google Sign-In cancelled'));
      }

      final googleAuth = await googleUser.authentication;
      final credential = firebase_auth.GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _firebaseAuth.signInWithCredential(credential);
      return const Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<void>> signInWithApple() async {
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final credential = firebase_auth.OAuthProvider('apple.com').credential(
        idToken: appleCredential.identityToken,
        accessToken: appleCredential.authorizationCode,
      );

      await _firebaseAuth.signInWithCredential(credential);
      return const Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<void> signOut() async {
    await Future.wait([
      _firebaseAuth.signOut(),
      // Google sign-out can fail if user didn't sign in with Google
      _googleSignIn.signOut().catchError((Object e) {
        _log.warning('Google sign-out failed: $e');
        return null;
      }),
    ]);
  }

  @override
  Future<Result<void>> deleteAccount() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return Result.error(Exception('User not authenticated'));
      }
      await user.delete();
      await _googleSignIn.signOut().catchError((Object e) {
        _log.warning('Google sign-out failed: $e');
        return null;
      });
      return const Result.ok(null);
    } on firebase_auth.FirebaseAuthException catch (e) {
      if (e.code == 'requires-recent-login') {
        return const Result.error(ReAuthRequiredException());
      }
      return Result.error(e);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  AuthState _mapFirebaseUserToAuthState(firebase_auth.User? firebaseUser) {
    if (firebaseUser == null) {
      return const AuthState.unauthenticated();
    }
    return AuthState.authenticated(_mapFirebaseUserToUser(firebaseUser));
  }

  User _mapFirebaseUserToUser(firebase_auth.User firebaseUser) {
    return User(
      id: UserId(firebaseUser.uid), // Using Firebase UID as local ID for simplicity in M2
      firebaseUid: firebaseUser.uid,
      displayName: firebaseUser.displayName,
      email: firebaseUser.email,
      avatarUrl: firebaseUser.photoURL,
    );
  }
}

@module
abstract class AuthModule {
  @lazySingleton
  firebase_auth.FirebaseAuth get firebaseAuth => firebase_auth.FirebaseAuth.instance;

  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();
}
