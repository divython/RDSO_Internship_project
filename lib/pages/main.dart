// import 'dart:js';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trainappfinal/pages/safety.dart';
import 'package:trainappfinal/pages/signin.dart';
import 'package:trainappfinal/pages/user.dart';
import 'feedback.dart';
import 'heritage.dart';
import 'home_page.dart';
import 'pages/home_page.dart';
import 'pages/heritage.dart';
import 'package:trainappfinal/pages/pages/safety.dart';
import 'pages/feedback.dart';
import 'pages/user.dart';
import 'package:flutter/widgets.dart';
import 'fire_auth.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,


    title: 'IRCTC App',
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/':(context)=>signIn(),
      '/heritage': (context) => HeritagePage(),
      '/amenities': (context) => SafetyPage(),
      '/feedback': (context) => FeedbackPage(),
      '/user': (context) => UserPage(),
    },
  ));
}
