// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

import 'Firebase_options.dart';

// ...

Future<void> initializeFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA2KXGtpexuct6vMC5ogitIgqMvbeLCWQI',
    appId: '1:916831121131:web:ccd1fc47a14a3bfcd118ae',
    messagingSenderId: '916831121131',
    projectId: 'snakegame-bfebc',
    authDomain: 'snakegame-bfebc.firebaseapp.com',
    storageBucket: 'snakegame-bfebc.appspot.com',
    measurementId: 'G-QVW7ZEQTSP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDgo_nIm1DcAC0BAItoLxlcVEhJz4WM3EI',
    appId: '1:916831121131:android:66d5175c834baafcd118ae',
    messagingSenderId: '916831121131',
    projectId: 'snakegame-bfebc',
    storageBucket: 'snakegame-bfebc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAuy_54lIl-T5NRMS_6jgeaaq6RUbQaWVs',
    appId: '1:916831121131:ios:3f49508b04ddf64fd118ae',
    messagingSenderId: '916831121131',
    projectId: 'snakegame-bfebc',
    storageBucket: 'snakegame-bfebc.appspot.com',
    iosBundleId: 'com.example.starter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAuy_54lIl-T5NRMS_6jgeaaq6RUbQaWVs',
    appId: '1:916831121131:ios:f3f67e16324a2496d118ae',
    messagingSenderId: '916831121131',
    projectId: 'snakegame-bfebc',
    storageBucket: 'snakegame-bfebc.appspot.com',
    iosBundleId: 'com.example.starter.RunnerTests',
  );
}
