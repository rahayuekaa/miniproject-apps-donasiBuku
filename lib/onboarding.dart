import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/logo_3.png',
                height: 420,
              ),
              Text(
                'Donasi Buku Untuk Peduli\n Taman Baca',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                      fontSize: 26,
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Aplikasi ini memudahkan kita untuk berdonasi\n buku ke taman baca di lokasi terdekat.\nAmbil bukumu, ayo kita donasi!',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
