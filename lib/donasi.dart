import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Donasi extends StatefulWidget {
  const Donasi({super.key});

  @override
  State<Donasi> createState() => _DonasiState();
}

class _DonasiState extends State<Donasi> {

Future<void> _launchURL(String url) async {
  final Uri uri = Uri(scheme: 'https', host: url);
  if(!await launchUrl(
    uri,
  )) {
    throw "can not launch url";
  }
}

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
            height: 330,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset('assets/logo5.png',
            width: 10,

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
              child: GestureDetector(
                onTap: () {
                  _launchURL("maps.google.com");
                },
                child: Icon(
                  Icons.location_pin,
                  size: 45,
                  color: Colors.white,
                ),
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
              child: GestureDetector(
                onTap: () {
                final Uri emailLaunchUri = Uri(
                scheme: 'mailto',
                path: 'bagibukuofficial@gmail.com',
                query: encodeQueryParameters(<String, String>{
                'subject': 'Example Subject & Symbols are allowed!',
              }),
              );
                launchUrl(emailLaunchUri);
                },
                child: Icon(
                  Icons.email_sharp,
                  size: 45,
                  color: Colors.white,
                ),
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
              child: GestureDetector(
                onTap: () {
                  _launchURL("maps.google.com");
                },
                child: Text(
                  'Jalan Gunung Anyar   \n Surabaya',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
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
              child: GestureDetector(
                onTap: (){
                  _launchURL("maps.google.com");
                },
                child: Text(
                  'Jalan Rungkut Madya\n Surabaya',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
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
        SizedBox(height: 45,),
        Container(
          height: 50,
          width: 340,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/done');
            },
            child: Text(
              'Donasi',
              style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

encodeQueryParameters(Map<String, String> map) {
}