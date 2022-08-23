import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
class Product_Category extends StatefulWidget {
  const Product_Category({Key? key}) : super(key: key);

  @override
  State<Product_Category> createState() => _Product_CategoryState();
}

class _Product_CategoryState extends State<Product_Category> {
  Color change1 = Colors.pink;
  Color change2 = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 10,),
          Container(
            height: 40,width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10),
              ),
              border:  GradientBoxBorder(
                gradient: LinearGradient(colors: [Colors.purple, Colors.blueAccent,Colors.red]),
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 3,),
                Image.asset("assets/images/all.png",height: 25,width: 25,color: Colors.pink,),
                SizedBox(width: 5,),
                Text("All",style: TextStyle(fontFamily: "Yaahow",color: change2),),
              ],
            ),
          ),
          SizedBox(width: 19,),
          InkWell(onTap: (){

          },
            child: Container(
              height: 40,width: 115,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10),
                ),
                border:  GradientBoxBorder(
                  gradient: LinearGradient(colors: [Colors.purple, Colors.blueAccent,Colors.red]),
                ), ),
              child: Row(
                children: [
                  SizedBox(width: 6,),
                  Image.asset("assets/images/footwear.png",height: 25,width: 25,),
                  SizedBox(width: 5,),
                  Text("Footwear",style: TextStyle(fontFamily: "Yaahow",color: change2),),
                ],
              ),
            ),
          ),
          SizedBox(width: 19,),
          Container(
            height: 40,width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10),
              ),
              border:  GradientBoxBorder(
                gradient: LinearGradient(colors: [Colors.purple, Colors.blueAccent,Colors.red]),
              ),              ),
            child: Row(
              children: [
                SizedBox(width: 6,),
                Image.asset("assets/images/watch.png",height: 25,width: 25,),
                SizedBox(width: 5,),
                Text("Watch",style: TextStyle(fontFamily: "Yaahow",),),
              ],
            ),
          ),
          SizedBox(width: 19,),
          Container(
            height: 40,width: 105,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10),
              ),
              border:  GradientBoxBorder(
                gradient: LinearGradient(colors: [Colors.purple, Colors.blueAccent,Colors.red]),
              ),              ),
            child: Row(
              children: [
                SizedBox(width: 6,),
                Image.asset("assets/images/sunglass.png",height: 25,width: 25,),
                SizedBox(width: 5,),
                Text("Sunglass",style: TextStyle(fontFamily: "Yaahow",),),
              ],
            ),
          ),   SizedBox(width: 19,),
          Container(
            height: 40,width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10),
              ),
              border:  GradientBoxBorder(
                gradient: LinearGradient(colors: [Colors.purple, Colors.blueAccent,Colors.red]),
              ),              ),
            child: Row(
              children: [
                SizedBox(width: 6,),
                Image.asset("assets/images/fastfood.png",height: 25,width: 25,),
                SizedBox(width: 5,),
                Text("Fast Food",style: TextStyle(fontFamily: "Yaahow",),),
              ],
            ),
          ),
          SizedBox(width: 19,),
          Container(
            height: 40,width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10),
              ),
              border:  GradientBoxBorder(
                gradient: LinearGradient(colors: [Colors.purple, Colors.blueAccent,Colors.red]),
              ),              ),
            child: Row(
              children: [
                SizedBox(width: 6,),
                Image.asset("assets/images/meat2.png",height: 25,width: 25,),
                SizedBox(width: 5,),
                Text("Meat",style: TextStyle(fontFamily: "Yaahow",),),
              ],
            ),
          ),   SizedBox(width: 19,),
          Container(
            height: 40,width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10),
              ),
              border:  GradientBoxBorder(
                gradient: LinearGradient(colors: [Colors.purple, Colors.blueAccent,Colors.red]),
              ),              ),
            child: Row(
              children: [
                SizedBox(width: 6,),
                Image.asset("assets/images/tws.png",height: 25,width: 25,),
                SizedBox(width: 5,),
                Text("TWS",style: TextStyle(fontFamily: "Yaahow",),),
              ],
            ),
          ),
        ],
    );
  }
}
