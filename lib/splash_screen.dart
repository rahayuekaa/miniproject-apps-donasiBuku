import 'dart:async';
import 'package:flutter/material.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    startTimer();
    super.initState();
  }
  startTimer(){
    var duration = Duration(seconds: 3);
    return Timer(duration, route);
  }
  route(){
    Navigator.of(context).pushReplacementNamed('/onboarding');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo_buku.png'),
              Text("BagiBuku.id", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.blueAccent),)
            ],
          ),
        ),
      ),
    );
  }
}
