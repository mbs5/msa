// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyDhWwH544-yp5A7gUNiQ9tuj0EFL4xoFmI',
    appId: '1:702179356991:web:e8158981fd9d9b88fc238a',
    messagingSenderId: '702179356991',
    projectId: 'msa-applictation',
    authDomain: 'msa-applictation.firebaseapp.com',
    databaseURL: 'https://msa-applictation-default-rtdb.firebaseio.com',
    storageBucket: 'msa-applictation.appspot.com',
    measurementId: 'G-WZ67BS9ZZY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBMNETcJT_OUuIhGA11TEwIkbFRkE-ln1A',
    appId: '1:702179356991:android:60fe8ffeb3e5bf6efc238a',
    messagingSenderId: '702179356991',
    projectId: 'msa-applictation',
    databaseURL: 'https://msa-applictation-default-rtdb.firebaseio.com',
    storageBucket: 'msa-applictation.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCL61h3VycgRk8Wda7KjW4XTANip37Su5I',
    appId: '1:702179356991:ios:cf634029a1c95df1fc238a',
    messagingSenderId: '702179356991',
    projectId: 'msa-applictation',
    databaseURL: 'https://msa-applictation-default-rtdb.firebaseio.com',
    storageBucket: 'msa-applictation.appspot.com',
    iosClientId: '702179356991-3cffp9dt300k1b2on8qqtsrdd9pfdfsm.apps.googleusercontent.com',
    iosBundleId: 'com.example.msa',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCL61h3VycgRk8Wda7KjW4XTANip37Su5I',
    appId: '1:702179356991:ios:cf634029a1c95df1fc238a',
    messagingSenderId: '702179356991',
    projectId: 'msa-applictation',
    databaseURL: 'https://msa-applictation-default-rtdb.firebaseio.com',
    storageBucket: 'msa-applictation.appspot.com',
    iosClientId: '702179356991-3cffp9dt300k1b2on8qqtsrdd9pfdfsm.apps.googleusercontent.com',
    iosBundleId: 'com.example.msa',
  );
}
