import 'package:flutter/material.dart';
import 'package:my_ecom_app/widget_separate_code/drawer_screen_files.dart';
import 'package:my_ecom_app/widget_separate_code/main_screen_design.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children:[
            Container(
            child: Front_Screen_Ui(),

          ),
    ],
        ),
      ),
      drawer: DrawerScreen(),
    );
  }
}
