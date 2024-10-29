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
    apiKey: 'AIzaSyCoTVo657X_lYKfazl1dtd130OJpMWKfSM',
    appId: '1:797811277621:web:f3f26429cb01d14d20d67c',
    messagingSenderId: '797811277621',
    projectId: 'autunm-2024',
    authDomain: 'autunm-2024.firebaseapp.com',
    storageBucket: 'autunm-2024.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD-m475WIS9StGpIONdnp3WRpeIiNutCvU',
    appId: '1:797811277621:android:9323e717b3aeb87420d67c',
    messagingSenderId: '797811277621',
    projectId: 'autunm-2024',
    storageBucket: 'autunm-2024.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBCcWaJvFbs3fjkAEWFJMKJKTPMfLdpRfw',
    appId: '1:797811277621:ios:beb9ae2a02b822ad20d67c',
    messagingSenderId: '797811277621',
    projectId: 'autunm-2024',
    storageBucket: 'autunm-2024.appspot.com',
    iosBundleId: 'com.example.firebaseSession',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBCcWaJvFbs3fjkAEWFJMKJKTPMfLdpRfw',
    appId: '1:797811277621:ios:beb9ae2a02b822ad20d67c',
    messagingSenderId: '797811277621',
    projectId: 'autunm-2024',
    storageBucket: 'autunm-2024.appspot.com',
    iosBundleId: 'com.example.firebaseSession',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCoTVo657X_lYKfazl1dtd130OJpMWKfSM',
    appId: '1:797811277621:web:bf13493c3182ff9e20d67c',
    messagingSenderId: '797811277621',
    projectId: 'autunm-2024',
    authDomain: 'autunm-2024.firebaseapp.com',
    storageBucket: 'autunm-2024.appspot.com',
  );
}
