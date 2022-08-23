import 'package:flutter/material.dart';
import 'package:my_ecom_app/products_description/shirt_product.dart';
import '../utils_screen/alignment.dart';
class Product_list extends StatefulWidget {
  const Product_list({Key? key}) : super(key: key);

  @override
  State<Product_list> createState() => _Product_listState();
}

class _Product_listState extends State<Product_list> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: scHeight(53, context),width: double.infinity,
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10,left: 3),
                    height: 150,width: 330,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(164, 199, 224, 0.2),
                      borderRadius: BorderRadius.all(Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/images/honey.png",height: 100,),
                        SizedBox(width: 5,),
                        Container(
                          width: 225,
                          child: Column(
                            children: [
                              SizedBox(height: 25,),
                              Text("Saffola Honey, 100% Pure NMR ",style: TextStyle(fontFamily: "Yaahow",fontSize: 10,),),
                              Text("tested Honey, 1.0kg",style: TextStyle(fontFamily: "Yaahow",fontSize: 10,),),
                              Container(
                                  margin: EdgeInsets.only(right: 100),
                                  child: Image.asset("assets/images/star.png",height: 35,)),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children:[
                                  Text("₹225",style: TextStyle(fontFamily: "Yaahow",fontSize: 20,
                                      color: Colors.green,fontWeight: FontWeight.w900),),
                                  Text("(₹430.00)",style:
                                  TextStyle(decoration: TextDecoration.lineThrough,color: Colors.red),),
                                ],
                              ),
                              Text("(save upto 15%)",style: TextStyle(fontFamily: "Yaahow"),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10,left: 3),
                    height: 150,width: 330,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(164, 199, 224, 0.2),
                      borderRadius: BorderRadius.all(Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/images/chicken.png",height: 60,),
                        SizedBox(width: 5,),
                        Container(
                          width: 225,
                          child: Column(
                            children: [
                              SizedBox(height: 25,),
                              Text("Broiler chicken, 100% Halaal ",style: TextStyle(fontFamily: "Yaahow",fontSize: 10,),),
                              Text("tasty Chicken, 1.0kg",style: TextStyle(fontFamily: "Yaahow",fontSize: 10,),),
                              Container(
                                  margin: EdgeInsets.only(right: 100),
                                  child: Image.asset("assets/images/star.png",height: 35,)),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children:[
                                  Text("₹150",style: TextStyle(fontFamily: "Yaahow",fontSize: 20,
                                      color: Colors.green,fontWeight: FontWeight.w900),),
                                  Text("(₹210.00)",style:
                                  TextStyle(decoration: TextDecoration.lineThrough,color: Colors.red),),
                                ],
                              ),
                              Text("(save upto 20%)",style: TextStyle(fontFamily: "Yaahow"),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Ramraj_shirt()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 10,left: 3),
                      height: 150,width: 330,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(164, 199, 224, 0.2),
                        borderRadius: BorderRadius.all(Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Image.asset("assets/images/shirt.png",height: 60,),
                          SizedBox(width: 5,),
                          Container(
                            width: 225,
                            child: Column(
                              children: [
                                SizedBox(height: 25,),
                                Text("Ramraj shirt, 100% pure cotton ",style: TextStyle(fontFamily: "Yaahow",fontSize: 10,),),
                                Text("Royal white, 1 piece",style: TextStyle(fontFamily: "Yaahow",fontSize: 10,),),
                                Container(
                                    margin: EdgeInsets.only(right: 100),
                                    child: Image.asset("assets/images/star.png",height: 35,)),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:[
                                    Text("₹400",style: TextStyle(fontFamily: "Yaahow",fontSize: 20,
                                        color: Colors.green,fontWeight: FontWeight.w900),),
                                    Text("(₹650.00)",style:
                                    TextStyle(decoration: TextDecoration.lineThrough,color: Colors.red),),
                                  ],
                                ),
                                Text("(save upto 30%)",style: TextStyle(fontFamily: "Yaahow"),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10,left: 3),
                    height: 150,width: 330,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(164, 199, 224, 0.2),
                      borderRadius: BorderRadius.all(Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Image.asset("assets/images/sunrise.png",height: 60,),
                        SizedBox(width: 5,),
                        Container(
                          width: 225,
                          child: Column(
                            children: [
                              SizedBox(height: 25,),
                              Text("Sunrise Oil,Healthy  ",style: TextStyle(fontFamily: "Yaahow",fontSize: 10,),),
                              Text("pure oil, 5 ltr",style: TextStyle(fontFamily: "Yaahow",fontSize: 10,),),
                              Container(
                                  margin: EdgeInsets.only(right: 100),
                                  child: Image.asset("assets/images/star.png",height: 35,)),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children:[
                                  Text("₹600",style: TextStyle(fontFamily: "Yaahow",fontSize: 20,
                                      color: Colors.green,fontWeight: FontWeight.w900),),
                                  Text("(₹900.00)",style:
                                  TextStyle(decoration: TextDecoration.lineThrough,color: Colors.red),),
                                ],
                              ),
                              Text("(save upto 20%)",style: TextStyle(fontFamily: "Yaahow"),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
