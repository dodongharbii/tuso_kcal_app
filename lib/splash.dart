import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tuso_kcal_app/introPages.dart';

import 'home.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    gotoIntro();
  }

  gotoIntro() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => IntroPages()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Center(
        child: Container(
          width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/veggies.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
              ),
              Text('kcal',
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              SizedBox(
                height: 250,
              ),
              Text('ZUAMICA',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white70,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
