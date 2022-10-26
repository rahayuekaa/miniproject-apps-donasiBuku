import 'package:flutter/material.dart';
import 'donasi.dart';
import 'done.dart';
import 'home.dart';
import 'login.dart';
import 'onboarding.dart';
import 'profile.dart';
import 'register.dart';
import 'splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => Splash(),
      '/onboarding':(context) => Onboarding(),
      '/login':(context) => Login(),
     '/register':(context) => Register(),
     '/home' :(context) => Home(),
     '/donasi' :(context) => Donasi(),
     '/done' :(context) => Done(),
     '/profile' :(context) => Profile(),
    },
  ));
}



