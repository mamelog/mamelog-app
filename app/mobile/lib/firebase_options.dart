import 'dart:io';

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:mamelog/src/flavor/flavor.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions currentPlatform({
    AppFlavor flavor = AppFlavor.dev,
  }) {
    if (Platform.isIOS || Platform.isMacOS) {
      return _iosOptions(flavor);
    }
    if (Platform.isAndroid) {
      return _androidOptions(flavor);
    }
    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static FirebaseOptions _androidOptions(AppFlavor flavor) => switch (flavor) {
    AppFlavor.dev => const FirebaseOptions(
      apiKey: 'AIzaSyAnTJxFXGh6hWtt6P3M-esFU5AqIH80SCo',
      appId: '1:856259101915:android:03b5d40dcb6558f109b8fe',
      messagingSenderId: '856259101915',
      projectId: 'mamelog-coffee-dev',
      storageBucket: 'mamelog-coffee-dev.firebasestorage.app',
    ),
    AppFlavor.stg => const FirebaseOptions(
      apiKey: 'AIzaSyC-uKV7uMV7h016HFXGz_DoQNJEYtr75mg',
      appId: '1:721568962335:android:2761675f30767efe20822a',
      messagingSenderId: '721568962335',
      projectId: 'mamelog-coffee-stg',
      storageBucket: 'mamelog-coffee-stg.firebasestorage.app',
    ),
    AppFlavor.prod => const FirebaseOptions(
      apiKey: 'AIzaSyC9v8GCUGKhJoRotErUtUM13itutqd3ufo',
      appId: '1:151390765874:android:a3b1ffa4a0908669728d2b',
      messagingSenderId: '151390765874',
      projectId: 'mamelog-coffee',
      storageBucket: 'mamelog-coffee.firebasestorage.app',
    ),
  };

  static FirebaseOptions _iosOptions(AppFlavor flavor) => switch (flavor) {
    AppFlavor.dev => const FirebaseOptions(
      apiKey: 'AIzaSyAFCqixzgwT5kxARFwKLjSk3s2lw9Ga0EA',
      appId: '1:856259101915:ios:023fd94778628e2e09b8fe',
      messagingSenderId: '856259101915',
      projectId: 'mamelog-coffee-dev',
      storageBucket: 'mamelog-coffee-dev.firebasestorage.app',
      iosBundleId: 'coffee.mamelog.app.dev',
    ),
    AppFlavor.stg => const FirebaseOptions(
      apiKey: 'AIzaSyCORPCDMhKZs4bsH6RII-bfbrNezXECTo0',
      appId: '1:721568962335:ios:351fd61f2057a44a20822a',
      messagingSenderId: '721568962335',
      projectId: 'mamelog-coffee-stg',
      storageBucket: 'mamelog-coffee-stg.firebasestorage.app',
      iosBundleId: 'coffee.mamelog.app.stg',
    ),
    AppFlavor.prod => const FirebaseOptions(
      apiKey: 'AIzaSyCLbWZFRxDf8S8BO4bBBBbfYRCLUCZcKHA',
      appId: '1:151390765874:ios:021a5e6dabdb41d9728d2b',
      messagingSenderId: '151390765874',
      projectId: 'mamelog-coffee',
      storageBucket: 'mamelog-coffee.firebasestorage.app',
      iosBundleId: 'coffee.mamelog.app',
    ),
  };
}
