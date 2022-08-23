import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_ecom_app/screens/intro_screen.dart';
import 'package:my_ecom_app/utils_screen/alignment.dart';
void main()=>runApp(new MaterialApp(
  home: new SplashScreen(),
));

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    gotonext();
  }

  gotonext() {

    Timer(Duration(seconds: 6), () {
      print("timer function");
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>IntroScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: scWidth(100, context),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.orange, Colors.white, Colors.green],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Nammakadai.gif",
              height: 300,
              width: 300,
            ),
            SizedBox(
              height: scHeight(5, context),
            ),
            Text(
              "Welcomes To Kadai",
              style: style1(),
            ),
            Text(
              "By Swadhesi, For Swadhesi",
              style: TextStyle(
                  fontFamily: "Yaahow",
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: scHeight(10, context),
            ),
            SpinKitCircle(
              color: Color.fromRGBO(36, 45, 92, 0.9),
              size: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
