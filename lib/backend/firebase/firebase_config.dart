import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCxqK6ZQLc3HKtaZUZpePfcKtSd5uyUaak",
            authDomain: "educationai-4a07a.firebaseapp.com",
            projectId: "educationai-4a07a",
            storageBucket: "educationai-4a07a.appspot.com",
            messagingSenderId: "695230684172",
            appId: "1:695230684172:web:8062f121a2ffddc1e6e229"));
  } else {
    await Firebase.initializeApp();
  }
}
