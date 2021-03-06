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
    apiKey: 'AIzaSyD8Ld6erKvaGFuSrzoTXGA09DraC1fbRCE',
    appId: '1:1017459134618:android:5b79cff5c9ef156e664f23',
    messagingSenderId: '1017459134618',
    projectId: 'video-content-curation-project',
    databaseURL: 'https://video-content-curation-project-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'video-content-curation-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCP7QDc78JwR8uuIkzkNfbB6A_Xoxh1nbM',
    appId: '1:1017459134618:ios:3329e125370badd2664f23',
    messagingSenderId: '1017459134618',
    projectId: 'video-content-curation-project',
    databaseURL: 'https://video-content-curation-project-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'video-content-curation-project.appspot.com',
    iosClientId: '1017459134618-rihb567pp4guu6t630ceqk1erdfdqhea.apps.googleusercontent.com',
    iosBundleId: 'com.example.movieCuration',
  );
}
