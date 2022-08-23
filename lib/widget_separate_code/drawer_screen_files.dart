import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:my_ecom_app/screens/cart_screen.dart';
import 'package:my_ecom_app/screens/google_login_screen.dart';
import 'package:my_ecom_app/screens/login_screen.dart';
import 'package:my_ecom_app/sharedprfesss.dart';
class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  String name="user";
  String displayname="user";
   String displayphoto = "user";
  String photo = "user";
  initState(){
    super.initState();
    getlocal();
  }
  getlocal() async {
    displayname = await Appshared.getloginname();
    displayphoto= await Appshared.getloginphoto();
    setState((){
      name = displayname;
      photo = displayphoto;
    });
    print("getlocal"+photo);
  }
  @override
  Widget build(BuildContext context) {
    return
      Drawer(
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.purple, Colors.cyan]),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(130),
                      bottomLeft: Radius.circular(130)),
                  border:  GradientBoxBorder(
                    gradient: LinearGradient(colors: [Colors.purple, Colors.blueAccent,Colors.red]),
                  ),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Positioned(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(photo),
                        radius: 60,
                      ),
                      bottom: -50,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 15, fontFamily: "Yaahow"),
              ),
              Text(
                "Customer Id: p67k53670ytQ",
                style: TextStyle(fontSize: 15, fontFamily: "Yaahow"),
              ),SizedBox(height: 30,),
              Card(
                elevation: 3,
                shadowColor: Color.fromRGBO(165, 107, 199, 0.9),
                child: ListTile(
                  leading: Icon(Icons.account_circle,color: Colors.cyan,size: 35,),
                  title: Text("Account Info",style: TextStyle(fontFamily: "Yaahow",fontSize: 15),),
                ),
              ),  Card(
                elevation: 3,
                shadowColor: Color.fromRGBO(165, 107, 199, 0.9),
                child: InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Cart_Screen()));
                    },

                  child: ListTile(
                    leading: Icon(Icons.shopping_cart_sharp
                      ,color: Colors.cyan,size: 35,),
                    title: Text("My Cart",style: TextStyle(fontFamily: "Yaahow",fontSize: 15),),
                  ),
                ),
              ),  Card(
                elevation: 3,
                shadowColor: Colors.purple,
                child: ListTile(
                  leading: Icon(Icons.shopping_bag_rounded,color: Colors.cyan,size: 35,),
                  title: Text("My Orders",style: TextStyle(fontFamily: "Yaahow",fontSize: 15),),
                ),
              ), Card(
                elevation: 3,
                shadowColor: Color.fromRGBO(165, 107, 199, 0.9),
                child: ListTile(
                  leading: Icon(Icons.settings,color: Colors.cyan,size: 35,),
                  title: Text("Settings",style: TextStyle(fontFamily: "Yaahow",fontSize: 15),),
                ),
              ), Card(
                elevation: 3,
                shadowColor: Color.fromRGBO(165, 107, 199, 0.9),
                child: ListTile(
                  leading: Icon(Icons.share,color: Colors.cyan,size: 35,),
                  title: Text("Invite",style: TextStyle(fontFamily: "Yaahow",fontSize: 15),),
                ),
              ),Card(
                elevation: 3,
                shadowColor: Color.fromRGBO(165, 107, 199, 0.9),
                child: ListTile(
                  leading: Icon(Icons.info,color: Colors.cyan,size: 35,),
                  title: Text("About",style: TextStyle(fontFamily: "Yaahow",fontSize: 15),),
                ),
              ),InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SocialLogin()));
                },
                child: Card(
                  elevation: 3,
                  shadowColor: Color.fromRGBO(165, 107, 199, 0.9),
                  child: ListTile(
                    leading: Icon(Icons.logout,color: Colors.cyan,size: 35,),
                    title: Text("Login",style: TextStyle(fontFamily: "Yaahow",fontSize: 15),),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
