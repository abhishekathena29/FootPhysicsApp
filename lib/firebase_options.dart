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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC2teJL4VKosdc2kW4lDsv0V7kngS0m9no',
    appId: '1:463525434046:web:cbffdc575beebc70a784ef',
    messagingSenderId: '463525434046',
    projectId: 'fysics-5eb38',
    authDomain: 'fysics-5eb38.firebaseapp.com',
    storageBucket: 'fysics-5eb38.appspot.com',
    measurementId: 'G-JRKJZLCG0T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCamDnBJre4kbc1wG1DvRZipFyAQQHQLik',
    appId: '1:463525434046:android:e951223147b00b3ba784ef',
    messagingSenderId: '463525434046',
    projectId: 'fysics-5eb38',
    storageBucket: 'fysics-5eb38.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAjO1qzRrXTzSUE7HTAUiEP5HVc0IU_-j8',
    appId: '1:463525434046:ios:89619826ba5ca03ea784ef',
    messagingSenderId: '463525434046',
    projectId: 'fysics-5eb38',
    storageBucket: 'fysics-5eb38.appspot.com',
    iosBundleId: 'com.example.footPhysicsAap',
  );
}
