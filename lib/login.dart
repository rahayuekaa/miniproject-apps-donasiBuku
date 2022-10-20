import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return SingleChildScrollView (
      child: Column(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Image.asset("assets/logo_buku.png"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'BagiBuku.id',
            style: TextStyle(
                fontSize: 25,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Masukkan Email',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Masukkan Password',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: TextButton(
                  onPressed: () {Navigator.of(context).pushNamed('/home');},
                  child: Text('LOGIN', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
                )
              ),
            ),
          ),
           SizedBox(
            height: 10,
           ),
           RichText(text: TextSpan(
            children: [
              TextSpan(
                text: "Belum memiliki akun?",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              TextSpan(
                text: " Daftar sekarang",
                style: TextStyle(fontSize: 14, color: Colors.blueAccent),
                recognizer:TapGestureRecognizer() 
                ..onTap = (() {
                  Navigator.of(context).pushNamed('/register');
                }),

              ),
            ],
          ),
           ),
        ],
      ),
    );
  }
}
