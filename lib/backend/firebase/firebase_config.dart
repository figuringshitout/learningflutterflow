import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB61J6Mm-Yt28Jhf_Yl52dU3od6MtBSvCU",
            authDomain: "learn-flutterflow-yuap7o.firebaseapp.com",
            projectId: "learn-flutterflow-yuap7o",
            storageBucket: "learn-flutterflow-yuap7o.appspot.com",
            messagingSenderId: "702545342349",
            appId: "1:702545342349:web:c3fdf523b83ceb63e657c4"));
  } else {
    await Firebase.initializeApp();
  }
}
