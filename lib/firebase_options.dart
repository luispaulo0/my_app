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
    apiKey: 'AIzaSyAkwWU8oj7KpVf4u0Ek043Usk6zJGH2svc',
    appId: '1:369972898692:web:0989dd319c0ee85affcbd1',
    messagingSenderId: '369972898692',
    projectId: 'flutter-veterinaria',
    authDomain: 'flutter-veterinaria.firebaseapp.com',
    storageBucket: 'flutter-veterinaria.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBfSLYKRBNZtLQjhj46jdBZ5w8PTcEzn7o',
    appId: '1:369972898692:android:79e12957bb175926ffcbd1',
    messagingSenderId: '369972898692',
    projectId: 'flutter-veterinaria',
    storageBucket: 'flutter-veterinaria.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCjiusRXIDSi7N9_gE3w0dVUd01yT6adrs',
    appId: '1:369972898692:ios:5bc96789ec7e8b02ffcbd1',
    messagingSenderId: '369972898692',
    projectId: 'flutter-veterinaria',
    storageBucket: 'flutter-veterinaria.appspot.com',
    iosClientId: '369972898692-62358l16qjak9i67k0rqqgakcaocol4i.apps.googleusercontent.com',
    iosBundleId: 'com.example.myApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCjiusRXIDSi7N9_gE3w0dVUd01yT6adrs',
    appId: '1:369972898692:ios:5bc96789ec7e8b02ffcbd1',
    messagingSenderId: '369972898692',
    projectId: 'flutter-veterinaria',
    storageBucket: 'flutter-veterinaria.appspot.com',
    iosClientId: '369972898692-62358l16qjak9i67k0rqqgakcaocol4i.apps.googleusercontent.com',
    iosBundleId: 'com.example.myApp',
  );
}
