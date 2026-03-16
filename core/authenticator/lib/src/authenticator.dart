import 'package:core_authenticator/src/auth_state.dart';
import 'package:core_common/result.dart';
import 'package:core_model/user.dart';

abstract class Authenticator {
  /// Stream of [AuthState] that emits when the authentication state changes.
  Stream<AuthState> get authStateChanges;

  /// Returns the current authenticated [User], or null if not authenticated.
  User? get currentUser;

  /// Returns the current Firebase ID token.
  ///
  /// Returns [Result.error] if not authenticated or if token retrieval fails.
  Future<Result<String>> getIdToken();

  /// Signs in with Google.
  Future<Result<void>> signInWithGoogle();

  /// Signs in with Apple.
  Future<Result<void>> signInWithApple();

  /// Signs out the current user.
  Future<void> signOut();

  /// Deletes the current user's account.
  ///
  /// May require re-authentication if the session is stale.
  /// Returns [Result.error] if deletion fails.
  Future<Result<void>> deleteAccount();
}
