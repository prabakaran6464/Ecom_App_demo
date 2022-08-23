import 'package:flutter/material.dart';
class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final _key = GlobalKey<FormState>();
  String? email,password;
  check(){
    final form = _key.currentState;
    if(form!.validate()){
      form.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _key,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 140),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (e) {
                    if (e!.isEmpty) {
                      return "please enter the email id";
                    }
                  },
                  onSaved: (e) => email = e!,  // data va on save pannanum
                  style: TextStyle(color: Colors.black38, fontSize: 16,
                      fontWeight: FontWeight.w300),
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(
                          left: 10, right: 10,
                        ),
                        child: Icon(Icons.alternate_email_outlined,
                            color: Colors.black38),
                      ),
                      contentPadding: EdgeInsets.all(12),
                      labelText: "Email ID"
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (e) {
                    if (e!.isEmpty) {
                      return "Password enter pannu Moodhevi";
                    }
                    if (e.length < 5) {
                      return "password character should be 5";
                    }
                  },
                  onSaved: (e) => password = e,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Icon(Icons.lock_outlined, color: Colors.black,),
                    ),
                    contentPadding: EdgeInsets.all(12),
                    labelText: ("Password"),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                check();
              }, child: Text("Resgister"),),
            ],
          ),
        ),
      ),
    );
  }
}
