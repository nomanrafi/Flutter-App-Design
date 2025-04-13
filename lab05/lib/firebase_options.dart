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
    apiKey: 'AIzaSyDUYKRWYDArPzC05tXrNyD-Mv4zxbJe_uc',
    appId: '1:794467711508:web:755c9dd8240ec557498501',
    messagingSenderId: '794467711508',
    projectId: 'help-668c7',
    authDomain: 'help-668c7.firebaseapp.com',
    storageBucket: 'help-668c7.firebasestorage.app',
    measurementId: 'G-VQNKVPL6B5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA85aYkiJ_ycRqlNygYdMLVv76vLl7s1I8',
    appId: '1:794467711508:android:c3f27ffb1942a661498501',
    messagingSenderId: '794467711508',
    projectId: 'help-668c7',
    storageBucket: 'help-668c7.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB9QT4kWJ_x-_DOJt5ItaS6nzZX9s3FTOY',
    appId: '1:794467711508:ios:7a4d8638f93826ce498501',
    messagingSenderId: '794467711508',
    projectId: 'help-668c7',
    storageBucket: 'help-668c7.firebasestorage.app',
    iosBundleId: 'com.example.testproject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB9QT4kWJ_x-_DOJt5ItaS6nzZX9s3FTOY',
    appId: '1:794467711508:ios:7a4d8638f93826ce498501',
    messagingSenderId: '794467711508',
    projectId: 'help-668c7',
    storageBucket: 'help-668c7.firebasestorage.app',
    iosBundleId: 'com.example.testproject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDUYKRWYDArPzC05tXrNyD-Mv4zxbJe_uc',
    appId: '1:794467711508:web:39b9f53152f2141a498501',
    messagingSenderId: '794467711508',
    projectId: 'help-668c7',
    authDomain: 'help-668c7.firebaseapp.com',
    storageBucket: 'help-668c7.firebasestorage.app',
    measurementId: 'G-KVVEV53KF6',
  );
}
