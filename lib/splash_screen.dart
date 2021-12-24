// ignore_for_file: avoid_unnecessary_containers, unnecessary_new

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:uts_detristi/dashboard.dart';
import 'package:uts_detristi/splash_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //implementasi
    super.initState();
    mulaiAplikasi();
  }

  mulaiAplikasi() async {
    // jumlah waktu loading
    var waktuLoading = const Duration(seconds: 5);

    return Timer(waktuLoading, () {
      // mulai ke halaman dashboard
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return Dashboard();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: new Stack(children: <Widget>[
        new Positioned(
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              "asset/images/fujifilm.png",
              height: 50,
            ),
          ),
        ),
        Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Made With ',
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        Text(' | ©2021'),
                      ],
                    ),
      ])),
    );
  }
}
