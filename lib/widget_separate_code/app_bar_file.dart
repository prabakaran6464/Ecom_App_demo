import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../utils_screen/alignment.dart';
class Appbar_File extends StatefulWidget {
  const Appbar_File({Key? key}) : super(key: key);

  @override
  State<Appbar_File> createState() => _Appbar_FileState();
}

class _Appbar_FileState extends State<Appbar_File> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: scHeight(15, context),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(40)),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.purple,
            Colors.cyanAccent,
          ],
        ),
      ),
      child: Row(
        children: [
          Container(
            child: Text(
              "NAMMA KADAI",
              style: TextStyle(
                  fontSize: 17,
                color: Colors.white,
                  fontFamily: "Yaahow",
                fontWeight: FontWeight.bold,
                  ),
            ),
            margin: EdgeInsets.only(left: 15),
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              height: 40,
              width: 130,
              margin: EdgeInsets.only(),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 20,
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(fontFamily: "Yaahow"),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              print("clicked");
            },
            child: Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.only(),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Image.asset("assets/images/camera.png"),
            ),
          ),
        ],
      ),
    );
  }
}
