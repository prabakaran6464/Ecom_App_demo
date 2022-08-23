import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../utils_screen/alignment.dart';
class Slider_File extends StatefulWidget {
  const Slider_File({Key? key}) : super(key: key);

  @override
  State<Slider_File> createState() => _Slider_FileState();
}

class _Slider_FileState extends State<Slider_File> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: scHeight(20, context),
        width: 340,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color.fromRGBO(164, 89, 201, 0.6), Colors.greenAccent],
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: ListView(
          children: [
            CarouselSlider(
              items: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 25, right: 10, bottom: 20),
                              height: 100,
                              width: 150,
                              child: Image.asset(
                                "assets/images/grocery.png",
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20))),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                Text(
                                  "50% Offer",
                                  style: TextStyle(
                                      fontFamily: "Yaahow", fontSize: 20),
                                ),
                                Text(
                                  "of",
                                  style: TextStyle(
                                      fontFamily: "Yaahow", fontSize: 10),
                                ),
                                Text(
                                  "Groccery Items",
                                  style: TextStyle(
                                      fontFamily: "Yaahow", fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  onPressed:(){
                                    openCheckout1();
                                  },
                                  child: Text(
                                    "Buy Now",
                                    style: TextStyle(
                                        fontSize: 15, fontFamily: "Yaahow"),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 25, right: 10, bottom: 20),
                              height: 100,
                              width: 150,
                              child: Image.asset(
                                "assets/images/cosmatics.png",
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20))),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                Text(
                                  "70% Offer",
                                  style: TextStyle(
                                      fontFamily: "Yaahow", fontSize: 20),
                                ),
                                Text(
                                  "of",
                                  style: TextStyle(
                                      fontFamily: "Yaahow", fontSize: 10),
                                ),
                                Text(
                                  "Cosmatics",
                                  style: TextStyle(
                                      fontFamily: "Yaahow", fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    openCheckout1();
                                  },
                                  child: Text(
                                    "Buy Now",
                                    style: TextStyle(
                                        fontSize: 15, fontFamily: "Yaahow"),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 25, right: 10, bottom: 20),
                              height: 100,
                              width: 150,
                              child: Image.asset(
                                "assets/images/meat.png",
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20))),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                Text(
                                  "30% Offer",
                                  style: TextStyle(
                                      fontFamily: "Yaahow", fontSize: 20),
                                ),
                                Text(
                                  "of",
                                  style: TextStyle(
                                      fontFamily: "Yaahow", fontSize: 10),
                                ),
                                Text(
                                  "Meat",
                                  style: TextStyle(
                                      fontFamily: "Yaahow", fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Buy Now",
                                    style: TextStyle(
                                        fontSize: 15, fontFamily: "Yaahow"),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 25, right: 10, bottom: 20),
                              height: 100,
                              width: 150,
                              child: Image.asset(
                                "assets/images/cloths.png",
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20))),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                Text(
                                  "50% Offer",
                                  style: TextStyle(
                                      fontFamily: "Yaahow", fontSize: 20),
                                ),
                                Text(
                                  "of",
                                  style: TextStyle(
                                      fontFamily: "Yaahow", fontSize: 10),
                                ),
                                Text(
                                  "Men Clothes",
                                  style: TextStyle(
                                      fontFamily: "Yaahow", fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Buy Now",
                                    style: TextStyle(
                                        fontSize: 15, fontFamily: "Yaahow"),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 25, right: 10, bottom: 20),
                              height: 100,
                              width: 150,
                              child: Image.asset(
                                "assets/images/gadjets.png",
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20))),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                Text(
                                  "40% Offer",
                                  style: TextStyle(
                                      fontFamily: "Yaahow", fontSize: 20),
                                ),
                                Text(
                                  "of",
                                  style: TextStyle(
                                      fontFamily: "Yaahow", fontSize: 10),
                                ),
                                Text(
                                  "Gadgets",
                                  style: TextStyle(
                                      fontFamily: "Yaahow", fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Buy Now",
                                    style: TextStyle(
                                        fontSize: 15, fontFamily: "Yaahow"),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
                initialPage: 5,
              ),
            ),
          ],
        ),
    );
  }
  static const platform = const MethodChannel("razorpay_flutter");
  late Razorpay _razorpay1;
  @override
  void dispose() {
    super.dispose();
    _razorpay1.clear();
  }
  @override
  void initState() {
    super.initState();
    _razorpay1 = Razorpay();
    _razorpay1.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay1.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay1.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void openCheckout1() async {
    var options = {
      'key': 'rzp_test_6po9bkOHl2ahNj',
      'amount': 10000,
      'name': 'Namma Kadai',
      'description': 'Grocery Items',
    };

    try {
      _razorpay1.open(options);
    } catch (e) {
      debugPrint('Error: e');
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print('Success Response: $response');
    /*Fluttertoast.showToast(
        msg: "SUCCESS: " + response.paymentId!,
        toastLength: Toast.LENGTH_SHORT); */
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print('Error Response: $response');
    /* Fluttertoast.showToast(
        msg: "ERROR: " + response.code.toString() + " - " + response.message!,
        toastLength: Toast.LENGTH_SHORT); */
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    print('External SDK Response: $response');
    /* Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET: " + response.walletName!,
        toastLength: Toast.LENGTH_SHORT); */
  }
}
