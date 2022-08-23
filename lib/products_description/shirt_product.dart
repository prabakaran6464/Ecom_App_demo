import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_ecom_app/sharedprfesss.dart';
import 'package:my_ecom_app/utils_screen/alignment.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Ramraj_shirt extends StatefulWidget {
  const Ramraj_shirt({Key? key}) : super(key: key);

  @override
  State<Ramraj_shirt> createState() => _Ramraj_shirtState();
}

class _Ramraj_shirtState extends State<Ramraj_shirt> {
  bool size36 = false;
  bool size38 = false;
  bool normal = true;
  bool size40 = false;
  bool size42 = false;
  bool size44 = false;
  bool size46 = false;
  Color change36 = Color.fromRGBO(166, 217, 227, 0.9);
  Color change38 = Color.fromRGBO(166, 217, 227, 0.9);
  Color change40 = Color.fromRGBO(166, 217, 227, 0.9);
  Color change42 = Color.fromRGBO(166, 217, 227, 0.9);
  Color change44 = Color.fromRGBO(166, 217, 227, 0.9);
  Color change46 = Color.fromRGBO(166, 217, 227, 0.9);
  Color change = Color.fromRGBO(166, 217, 227, 0.9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: scHeight(46, context), width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight,
                    colors: [
                      Color.fromRGBO(230, 236, 245, 0.9),
                      Color.fromRGBO(242, 230, 245, 0.9)
                    ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  normal?
                  Image.asset("assets/images/shirt.png",):new Container(),
                  size36?
                  Image.asset("assets/images/size36.png"):new Container(),
                  size38?
                  Image.asset("assets/images/size38.png"):new Container(),
                  size40?
                  Image.asset("assets/images/size40.png"):new Container(),
                  size42?
                      Image.asset("assets/images/size42.png",height: 250,):new Container(),
                  size44?
                      Image.asset("assets/images/size44.png"):new Container(),
                  size46?
                      Image.asset("assets/images/size46.png"):new Container(),
                ],
              ),
            ),
            SizedBox(
              height: scHeight(5, context),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Ramraj shirt,100% cotton",
                    style: TextStyle(
                        fontFamily: "Yaahow", fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Text(
                      "₹400",
                      style: TextStyle(
                          fontFamily: "Yaahow",
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "(₹650.00)",
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.red),
                    ),
                    Image.asset("assets/images/star.png",width: 100,),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Text(
                    "Size",
                    style: TextStyle(
                        fontFamily: "Yaahow",
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: (){
                    setState((){
                      size36 = true;
                      normal = false;
                      size38 = false;
                      size40 = false;
                      size42 = false;
                      size44 = false;
                      size46 = false;
                      change36 = Colors.purple;
                      change38 = change;
                      change40 = change;
                      change42 = change;
                      change44 = change;
                      change46 = change;

                    });
                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: change36,
                    child: Text(
                      "36",
                      style: TextStyle(fontFamily: "Yaahow"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: (){
                    setState((){
                      size38 = true;
                      size36 = false;
                      size40 = false;
                      normal = false;
                      size42 = false;
                      size44 = false;
                      size46 = false;
                    change36 = change;
                    change38 = Colors.purple;
                    change40 = change;
                    change42 = change;
                      change44 = change;
                      change46 = change;

                    });
                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: change38,
                    child: Text(
                      "38",
                      style: TextStyle(fontFamily: "Yaahow"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: (){
                    setState((){
                      size40 = true;
                      size38 = false;
                      size36 = false;
                      normal = false;
                      size42 = false;
                      size44 = false;
                      size46 = false;
                      change36 = change;
                      change38 = change;
                      change40 = Colors.purple;
                      change42 = change;
                      change44 = change;
                      change46 = change;

                    });
                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: change40,
                    child: Text(
                      "40",
                      style: TextStyle(fontFamily: "Yaahow"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: (){
                    setState((){
                      size40 = false;
                      size38 = false;
                      size36 = false;
                      normal = false;
                      size42 = true;
                      size44 = false;
                      size46 = false;
                      change36 = change;
                      change38 = change;
                      change40 = change;
                      change42 = Colors.purple;
                      change44 = change;
                      change46 = change;

                    });
                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: change42,
                    child: Text(
                      "42",
                      style: TextStyle(fontFamily: "Yaahow"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: (){
                    setState((){
                      size40 = false;
                      size38 = false;
                      size36 = false;
                      normal = false;
                      size42 = false;
                      size44 = true;
                      size46 = false;
                      change44 = Colors.purple;
                      change36 = change;
                      change38 = change;
                      change40 = change;
                      change42 = change;
                      change46 = change;

                    });
                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: change44,
                    child: Text(
                      "44",
                      style: TextStyle(fontFamily: "Yaahow"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: (){
                    setState((){
                      size40 = false;
                      size38 = false;
                      size36 = false;
                      normal = false;
                      size42 = false;
                      size44 = false;
                      size46 = true;
                      change36 = change;
                      change38 = change;
                      change40 = change;
                      change42 = change;
                      change44 = change;
                      change46 = Colors.purple;
                    });
                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: change46,
                    child: Text(
                      "46",
                      style: TextStyle(fontFamily: "Yaahow"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                SizedBox(width: 25,),
                Text("See about product,",style: TextStyle(fontFamily: "Yaahow"),),
                TextButton(onPressed: (){}, child: Text("More info",style: TextStyle(fontFamily: "Yaahow"),))
              ],
            ),
            SizedBox(height: 50,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    String shirtpic = "assets/images/size36.png";
                    String shirtname = "Ramraj shirt,100% cotton";
                    String price = "₹400";
                    Appshared.saveshirt(shirtname);
                    Appshared.saveshirtphoto(shirtpic);
                    Appshared.saveprice(price);
                    final snackbar6 = SnackBar(
                      content: const Text('product Added Yours Cart',style: TextStyle(fontFamily: "Yaahow"),),
                      action: SnackBarAction(
                        label: '',
                        onPressed: () {
                          // Some code to undo the change.
                        },
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar6);
                  },
                  child: Container(
                    height: 60,width: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color.fromRGBO(235, 188, 19, 0.5,),Color.fromRGBO(235, 188, 19, 1,)]
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10),),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Image.asset("assets/images/cart.png",height: 40,),
                        SizedBox(width: 5,),
                        Text("Add To Cart",style: TextStyle(fontFamily: "Yaahow",fontWeight: FontWeight.w900),),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    openCheckout2();
                  },
                  child: Container(
                    height: 60,width: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color.fromRGBO(52, 201, 129,0.5),Color.fromRGBO(52, 201, 129,1),]
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10),),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 5,),
                        Image.asset("assets/images/buy.png",height: 60,),
                        SizedBox(width: 5,),
                        Text("Buy Now",style: TextStyle(fontFamily: "Yaahow",fontWeight: FontWeight.w900),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  static const platform = const MethodChannel("razorpay_flutter");
  late Razorpay _razorpay2;
  @override
  void dispose() {
    super.dispose();
    _razorpay2.clear();
  }
  @override
  void initState() {
    super.initState();
    _razorpay2 = Razorpay();
    _razorpay2.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay2.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay2.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void openCheckout2() async {
    var options = {
      'key': 'rzp_test_6po9bkOHl2ahNj',
      'amount': 40000,
      'name': 'Namma Kadai',
      'description': 'Ramraj Shirt',
    };

    try {
      _razorpay2.open(options);
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

