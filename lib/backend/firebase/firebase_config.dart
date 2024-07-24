import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCGAHk1LnYZ1eKlpLZ0D86_R0DwnJQqzqg",
            authDomain: "famousy-6bf4e.firebaseapp.com",
            projectId: "famousy-6bf4e",
            storageBucket: "famousy-6bf4e.appspot.com",
            messagingSenderId: "409146335471",
            appId: "1:409146335471:web:4bc6be68aec00c111b3b1a"));
  } else {
    await Firebase.initializeApp();
  }
}
