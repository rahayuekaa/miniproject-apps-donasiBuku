import 'package:flutter/material.dart';

class Done extends StatelessWidget {
  const Done({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/verifed.png',
                width: 150,
                height: 300,
              ),
              Text(
                'Donasi buku telah berhasil!',
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
                'Siapkan buku yang akan didonasikan\n kurir akan segera mengambil sesuai\n alamat rumahmu',
                style: TextStyle(fontSize: 17, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                  child: Text(
                    'Back to home',
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