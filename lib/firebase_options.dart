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
    apiKey: 'AIzaSyBnyqMCNtqdvrAoJ8A9U-q2YvN5mO5cIlg',
    appId: '1:1016500321945:web:e194b0d6b7ac5d20810208',
    messagingSenderId: '1016500321945',
    projectId: 'zoom-clone-62a9d',
    authDomain: 'zoom-clone-62a9d.firebaseapp.com',
    storageBucket: 'zoom-clone-62a9d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBILIQDel8l2MQZ09HFZJVEmQXKtND9Oas',
    appId: '1:1016500321945:android:7c46cbed5262e331810208',
    messagingSenderId: '1016500321945',
    projectId: 'zoom-clone-62a9d',
    storageBucket: 'zoom-clone-62a9d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyANI2x6NzFxI-pDSM-OqDam8vbV5Xdvjn8',
    appId: '1:1016500321945:ios:32530629c624f026810208',
    messagingSenderId: '1016500321945',
    projectId: 'zoom-clone-62a9d',
    storageBucket: 'zoom-clone-62a9d.appspot.com',
    androidClientId: '1016500321945-7rkifmjqi7ropiv4fcvi2ancfr2gdus9.apps.googleusercontent.com',
    iosClientId: '1016500321945-4kko6r3rb4ojgr44c05uu8a3e3uslcii.apps.googleusercontent.com',
    iosBundleId: 'com.example.zoomClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyANI2x6NzFxI-pDSM-OqDam8vbV5Xdvjn8',
    appId: '1:1016500321945:ios:dda526cbf4cdb2a8810208',
    messagingSenderId: '1016500321945',
    projectId: 'zoom-clone-62a9d',
    storageBucket: 'zoom-clone-62a9d.appspot.com',
    androidClientId: '1016500321945-7rkifmjqi7ropiv4fcvi2ancfr2gdus9.apps.googleusercontent.com',
    iosClientId: '1016500321945-aimqg8mkhjcd7ktr8jgt0tqng2fdq03c.apps.googleusercontent.com',
    iosBundleId: 'com.example.zoomClone.RunnerTests',
  );
}