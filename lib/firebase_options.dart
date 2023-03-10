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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCEDt2cpgsh7Rlun_JmWcrizS9r-N3un8I',
    appId: '1:60169136850:android:9a8ecdd53e025840c2db0b',
    messagingSenderId: '60169136850',
    projectId: 'flutterfirebase-db75f',
    storageBucket: 'flutterfirebase-db75f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC7NaES9yNW-Xw6Nk-BIi6RF42VoRp7Amw',
    appId: '1:60169136850:ios:847c723fb85ad886c2db0b',
    messagingSenderId: '60169136850',
    projectId: 'flutterfirebase-db75f',
    storageBucket: 'flutterfirebase-db75f.appspot.com',
    androidClientId: '60169136850-cujhe9c3afer7fhiphd1b650g0e36u3u.apps.googleusercontent.com',
    iosClientId: '60169136850-jc35q5bnefd2sq5juomf37d71ktn03dj.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterfirebaseLogin',
  );
}
