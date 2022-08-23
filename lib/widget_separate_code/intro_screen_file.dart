import 'dart:io';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'dart:developer';
import 'package:my_ecom_app/screens/homescreen.dart';
import 'package:my_ecom_app/utils_screen/alignment.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../sharedprfesss.dart';

class IntroScreenCustomTab extends StatefulWidget {
  const IntroScreenCustomTab({Key? key}) : super(key: key);

  @override
  IntroScreenCustomTabState createState() => IntroScreenCustomTabState();
}

class IntroScreenCustomTabState extends State<IntroScreenCustomTab> {
  String? intro = "";

  // getloca() async {
  //   intro = await Appshared.getIntro();
  //   if (intro == "clicked") {
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => HomeScreen()));
  //   }
  // }

  bool isChecked = false;
  _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Terms & Conditions',
            style: TextStyle(fontFamily: "Yaahow", fontSize: 10),
          ),
          content: SingleChildScrollView(
            child: Container(
              height: scHeight(60, context),
              width: scWidth(60, context),
              child: Container(
                child: WebView(
                  initialUrl: "https://www.amazon.in/gp/help/customer/display.html?nodeId=GX7NJQ4ZB8MHFRNJ",
                ),
              ),
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("DisAgree",style: TextStyle(fontFamily: "Yaahow"),),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
                child: Text("Agree",style: TextStyle(fontFamily: "Yaahow"),))
          ],
        );
      },
    );
  }

  List<Slide> slides = [];

  late Function goToTab;

  @override
  void initState() {
    super.initState();
    // getloca();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
    slides.add(
      Slide(
        title: "Why? Namma Kadai",
        styleTitle: const TextStyle(
          color: Color(0xff3da4ab),
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Yaahow',
        ),
        description:
        "Our Namma Kadai app is used to connect people and merchants online and buy wholesale and retail market products online",
        styleDescription: const TextStyle(
          color: Color(0xfffe9c8f),
          fontSize: 20.0,
          fontFamily: 'Yaahow',
        ),
        pathImage: "assets/images/intro1.gif",
        heightImage: 300,
        widthImage: 500,
      ),
    );
    slides.add(
      Slide(
        title: "Quality Products",
        styleTitle: const TextStyle(
          color: Color(0xff3da4ab),
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Yaahow',
        ),
        description:
        "Our Namma Kadai app always promotes quality products. we send the products to customers only after our quality inspection experts check the products and very quickly only the time is spent for the inspection and not for the delivery.",
        styleDescription: const TextStyle(
          color: Color(0xfffe9c8f),
          fontSize: 20.0,
          fontFamily: 'Yaahow',
        ),
        pathImage: "assets/images/intro22.gif",
      ),
    );
    slides.add(
      Slide(
        title: "Save Environment",
        styleTitle: const TextStyle(
          color: Color(0xff3da4ab),
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Yaahow',
        ),
        description:
        "Namma kadai app parcels delivered products only with safe and eco-friendly materials and we use 30% of our revenue to plant saplings.",
        styleDescription: const TextStyle(
          color: Color(0xfffe9c8f),
          fontSize: 20.0,
          fontFamily: 'Yaahow',
        ),
        pathImage: "assets/images/intro33.gif",
      ),
    );
  }

  void onDonePress() {
    _showMyDialog();
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
    log("onTabChangeCompleted, index: $index");
  }

  Widget renderNextBtn() {
    return const Icon(
      Icons.navigate_next,
      color: Color(0xffffcc5c),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return const Icon(
      Icons.done,
      color: Color(0xffffcc5c),
    );
  }

  Widget renderSkipBtn() {
    return const Icon(
      Icons.skip_next,
      color: Color(0xffffcc5c),
    );
  }

  ButtonStyle myButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(const StadiumBorder()),
      backgroundColor:
      MaterialStateProperty.all<Color>(const Color(0x33ffcc5c)),
      overlayColor: MaterialStateProperty.all<Color>(const Color(0x33ffcc5c)),
    );
  }

  List<Widget> renderListCustomTabs() {
    return List.generate(
      slides.length,
          (index) => SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          color: Colors.white,
          margin: const EdgeInsets.only(bottom: 60.0, top: 60.0),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                child: Image.asset(
                  slides[index].pathImage!,
                  width: 200.0,
                  height: 250.0,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.only(top: 20.0),
                child: Text(
                  slides[index].title!,
                  style: slides[index].styleTitle,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.only(top: 20.0),
                child: Text(
                  slides[index].description ?? '',
                  style: slides[index].styleDescription,
                  textAlign: TextAlign.center,
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      backgroundColorAllSlides: Colors.white,
      // Skip button
      renderSkipBtn: renderSkipBtn(),
      skipButtonStyle: myButtonStyle(),

      // Next button
      renderNextBtn: renderNextBtn(),
      nextButtonStyle: myButtonStyle(),

      // Done button
      renderDoneBtn: renderDoneBtn(),
      onDonePress: onDonePress,
      doneButtonStyle: myButtonStyle(),

      // Dot indicator
      colorDot: const Color(0xffffcc5c),
      sizeDot: 13.0,

      // Tabs
      listCustomTabs: renderListCustomTabs(),
      // backgroundColorAllSlides: AppColor.primaryLightColor,
      refFuncGoToTab: (refFunc) {
        goToTab = refFunc;
      },

      // Behavior
      scrollPhysics: const BouncingScrollPhysics(),

      // Show or hide status bar
      hideStatusBar: true,

      // On tab change completed
      onTabChangeCompleted: onTabChangeCompleted,
    );
  }
}
