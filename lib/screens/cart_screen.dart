import 'package:flutter/material.dart';
import 'package:my_ecom_app/sharedprfesss.dart';
import 'package:my_ecom_app/utils_screen/alignment.dart';
class Cart_Screen extends StatefulWidget {
  const Cart_Screen({Key? key}) : super(key: key);

  @override
  State<Cart_Screen> createState() => _Cart_ScreenState();
}

class _Cart_ScreenState extends State<Cart_Screen> {
 String? name1,pic1,price;
  initState(){
    super.initState();
    getlocal2();
  }
  getlocal2() async {
    name1 = await Appshared.getshirt();
    pic1 = await Appshared.getshirtphoto();
    price = await Appshared.getprice();
    setState((){
      name1!;
      pic1!;
      price;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: scHeight(5, context),),
          Container(
            height: scHeight(20, context),width: scWidth(90, context),
            margin: EdgeInsets.only(left: 18),
            decoration: BoxDecoration(
              color: Color.fromRGBO(172, 220, 232, 0.5),
              borderRadius: BorderRadius.all(Radius.circular(20),),
            ),
            child: Row(
              children: [
                Image.asset(pic1!,height: 100,),
                SizedBox(width: 30,),
                Column(
                  children: [
                    SizedBox(height: 60,),
                    Text(name1!,style: TextStyle(fontFamily: "Yaahow",fontWeight: FontWeight.w900),),
                    Text(price!,style:TextStyle(fontFamily: "Yaahow",color: Colors.green),),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: scHeight(5, context),),
        ],
      ),
    );
  }
}
