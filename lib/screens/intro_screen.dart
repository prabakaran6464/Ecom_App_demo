import 'package:flutter/material.dart';
import 'package:my_ecom_app/widget_separate_code/intro_screen_file.dart';
class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroScreenCustomTab(),
    );
  }
}
