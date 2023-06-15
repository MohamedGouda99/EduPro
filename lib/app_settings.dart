import 'package:firebase_core/firebase_core.dart';

import 'models/be_user.dart';

const bool demoMode = false;
const int kMinWidthLargeScreen = 980;

class AppSettings {
  //ADMINS
  List<BeUser> admins = [
    BeUser(username: "admin", password: "admin"),
    BeUser(username: "root", password: "root"),
    BeUser(username: "edupro", password: "123456"),
  ];

  //CHANGE FIREBASE SETTINGS FOR WEB ADMIN HERE
  FirebaseOptions firebaseOptions = const FirebaseOptions(
      apiKey: "AIzaSyCBM4giMiXsU6zjEHOwMrngBs1aBOZEzWI",
      authDomain: "edu-pro-37522.firebaseapp.com",
      projectId: "edu-pro-37522",
      storageBucket: "edu-pro-37522.appspot.com",
      messagingSenderId: "942808528565",
      appId: "1:942808528565:web:ec694c92f2ff16e357f0fc");

  AppSettings();

  bool isAdmin(String username, String password) {
    for (BeUser admin in admins) {
      if (admin.username == username && admin.password == password) {
        return true;
      }
    }
    return false;
  }
}
