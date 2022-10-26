import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: 24,
              right: 24,
              bottom: 30,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      'Selamat Datang,',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/profile');
                      },
                      child: Image.asset(
                        'assets/user.png',
                        height: 40,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 147),
                  child: Text(
                    'Awali harimu dengan berbagi',
                    style: TextStyle(fontSize: 15, color: Colors.blueAccent),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Stack(
                  children: [
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Colors.blueAccent,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 15.0,
                              spreadRadius: 5.0,
                            )
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ayo menjadi, pahlawan kebaikan',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Dengan cara berbagi buku',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 17,
                                ),
                                FloatingActionButton.extended(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('');
                                  },
                                  backgroundColor: Colors.white,
                                  label: Text(
                                    'Selengkapnya',
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/logo4.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 155),
                  child: Text(
                    'Pilih kategori buku',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        'assets/buku1.png',
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
                          Navigator.of(context).pushNamed('/donasi');
                        },
                        child: Text(
                          'Buku Novel',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 140.0),
                        child: Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        'assets/buku2.png',
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
                          Navigator.of(context).pushNamed('/donasi');
                        },
                        child: Text(
                          'Buku Komik',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 135.0),
                        child: Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        'assets/buku3.png',
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
                          Navigator.of(context).pushNamed('/donasi');
                        },
                        child: Text(
                          'Buku Ensiklopedia',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 90.0),
                        child: Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        'assets/buku4.png',
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
                          Navigator.of(context).pushNamed('/donasi');
                        },
                        child: Text(
                          'Buku Ilmiah',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 135.0),
                        child: Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                 Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        'assets/buku5.png',
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
                          Navigator.of(context).pushNamed('/donasi');
                        },
                        child: Text(
                          'Buku Karya Sastra',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 88.0),
                        child: Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
