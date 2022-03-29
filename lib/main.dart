import 'package:authentification/auth/Login.dart';
import 'package:authentification/auth/SignUp.dart';
import 'package:authentification/auth/Start.dart';
import 'package:authentification/config/colors.dart';
import 'package:flutter/material.dart';
import 'screens/home/HomePage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //       primaryColor: primaryColor,
      //       scaffoldBackgroundColor: scaffoldBackgroundColor),

      debugShowCheckedModeBanner: false,
      home: HomePage(),

      routes: <String, WidgetBuilder>{
        "Login": (BuildContext context) => Login(),
        "SignUp": (BuildContext context) => SignUp(),
        "start": (BuildContext context) => Start(),
      },
    );
  }
}
