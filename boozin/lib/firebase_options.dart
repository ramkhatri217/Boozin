// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
        return windows;
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
    apiKey: 'AIzaSyDIX8NWtOZ5ehohqe5kDPHtwva3qWq7SNM',
    appId: '1:136070198634:web:c8d729eeb8fbb7438de113',
    messagingSenderId: '136070198634',
    projectId: 'uberclone-18d9f',
    authDomain: 'uberclone-18d9f.firebaseapp.com',
    databaseURL: 'https://uberclone-18d9f-default-rtdb.firebaseio.com',
    storageBucket: 'uberclone-18d9f.appspot.com',
    measurementId: 'G-5PVCLZSNSQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBvHNd1a-t_b6IZtPmghoMZ3CreUoM3fxc',
    appId: '1:136070198634:android:5d82a4347134e4e28de113',
    messagingSenderId: '136070198634',
    projectId: 'uberclone-18d9f',
    databaseURL: 'https://uberclone-18d9f-default-rtdb.firebaseio.com',
    storageBucket: 'uberclone-18d9f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDSu4KTc1roqNt_eELbqz6kN_Zp8nc15Y0',
    appId: '1:136070198634:ios:a6cdf85333917b668de113',
    messagingSenderId: '136070198634',
    projectId: 'uberclone-18d9f',
    databaseURL: 'https://uberclone-18d9f-default-rtdb.firebaseio.com',
    storageBucket: 'uberclone-18d9f.appspot.com',
    androidClientId: '136070198634-2lmb59rgu6th3csidt09jj5ud9121e9a.apps.googleusercontent.com',
    iosClientId: '136070198634-cjtok6q32k3bsg9b3v76tnr4bvsvct8q.apps.googleusercontent.com',
    iosBundleId: 'com.dev.boozin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDSu4KTc1roqNt_eELbqz6kN_Zp8nc15Y0',
    appId: '1:136070198634:ios:a6cdf85333917b668de113',
    messagingSenderId: '136070198634',
    projectId: 'uberclone-18d9f',
    databaseURL: 'https://uberclone-18d9f-default-rtdb.firebaseio.com',
    storageBucket: 'uberclone-18d9f.appspot.com',
    androidClientId: '136070198634-2lmb59rgu6th3csidt09jj5ud9121e9a.apps.googleusercontent.com',
    iosClientId: '136070198634-cjtok6q32k3bsg9b3v76tnr4bvsvct8q.apps.googleusercontent.com',
    iosBundleId: 'com.dev.boozin',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDIX8NWtOZ5ehohqe5kDPHtwva3qWq7SNM',
    appId: '1:136070198634:web:2db8bfa36ce162218de113',
    messagingSenderId: '136070198634',
    projectId: 'uberclone-18d9f',
    authDomain: 'uberclone-18d9f.firebaseapp.com',
    databaseURL: 'https://uberclone-18d9f-default-rtdb.firebaseio.com',
    storageBucket: 'uberclone-18d9f.appspot.com',
    measurementId: 'G-ZSTZZRJN53',
  );
}
