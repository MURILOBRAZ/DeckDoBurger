import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB55rs9qgIdlnMUD6T1Kv1CiDZLb3V-oDk",
            authDomain: "p1-muriloe-henrique-qld42j.firebaseapp.com",
            projectId: "p1-muriloe-henrique-qld42j",
            storageBucket: "p1-muriloe-henrique-qld42j.firebasestorage.app",
            messagingSenderId: "271553273620",
            appId: "1:271553273620:web:1c1e4384e08813062eac01"));
  } else {
    await Firebase.initializeApp();
  }
}
