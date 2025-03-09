import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAbijDQ5YQokKmcQvgHAODD3v2AIXJDaeI",
            authDomain: "sps-lawsuit-wxuvso.firebaseapp.com",
            projectId: "sps-lawsuit-wxuvso",
            storageBucket: "sps-lawsuit-wxuvso.firebasestorage.app",
            messagingSenderId: "236734951116",
            appId: "1:236734951116:web:2eb76d8ca34f39c60cdc69",
            measurementId: "G-RVSWHBETSM"));
  } else {
    await Firebase.initializeApp();
  }
}
