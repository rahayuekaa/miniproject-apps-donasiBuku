import 'package:flutter/material.dart';

class Donasi extends StatefulWidget {
  const Donasi({super.key});

  @override
  State<Donasi> createState() => _DonasiState();
}

class _DonasiState extends State<Donasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }
  Widget content() {
    return Column(
      children: [
        Center(
          child: Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset('assets/logo4.png',
            width: 50,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Taman Baca Terdekat',
          style: TextStyle(
            fontSize: 25,
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)),
              height: 90,
              width: 145,
              child: Icon(
                Icons.location_pin,
                size: 45,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 35,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)),
              height: 90,
              width: 145,
              child: Icon(
                Icons.phone,
                size: 45,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 180),
          child: Container(
            child: Text(
              'Lokasi rumah anda',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              child: Image.asset(
                'assets/app.png',
                width: 50,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                'Jalan Gunung Anyar   \n Surabaya',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            IconButton(
              onPressed: () {Navigator.of(context).pushNamed('');},
              icon: Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(right: 160),
          child: Container(
            child: Text(
              'Lokasi yang anda pilih',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        SizedBox(height: 10,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              child: Image.asset(
                'assets/app.png',
                width: 50,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                'Jalan Rungkut Madya\n Surabaya',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 38,),
        Container(
          height: 50,
          width: 340,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('');
            },
            child: Text(
              'Donasi',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}