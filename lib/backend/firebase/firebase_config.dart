import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBZe5AIcojyPqdGXAmMhU0wqJnqXZPjCM4",
            authDomain: "lqselgros.firebaseapp.com",
            projectId: "lqselgros",
            storageBucket: "lqselgros.appspot.com",
            messagingSenderId: "27353459798",
            appId: "1:27353459798:web:18694ac6313c7633959ff7",
            measurementId: "G-2BZE00Q6CB"));
  } else {
    await Firebase.initializeApp();
  }
}
