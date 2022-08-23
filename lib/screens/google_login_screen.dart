import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:my_ecom_app/screens/homescreen.dart';
import 'package:my_ecom_app/sharedprfesss.dart';
import 'package:my_ecom_app/utils_screen/alignment.dart';

class SocialLogin extends StatefulWidget {
  const SocialLogin({Key? key}) : super(key: key);

  @override
  _SocialLoginState createState() => _SocialLoginState();
}

class _SocialLoginState extends State<SocialLogin> {
  bool login = true;
  String? email, password;
  String? email1, password1;
  bool _secureText = true;
  bool hide = true;
  bool hide1 = true;
  final _key = GlobalKey<FormState>();
  final _key1 = GlobalKey<FormState>();
  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  check() {
    final form = _key.currentState;
    if (form!.validate()) {
      form.save();
      login = false;
      Email_Signin();
    }
  }

  check_login() {
    final form = _key1.currentState;
    if (form!.validate()) {
      form.save();
      Email_Login();
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Email_Signin() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email!,
        password: password!,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        final snackbar4 = SnackBar(
          content: const Text('please create a Strong password'),
          action: SnackBarAction(
            label: '',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackbar4);
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        final snackbar3 = SnackBar(
          content: const Text('The account already exists for that email!'),
          action: SnackBarAction(
            label: '',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackbar3);
      }
    } catch (e) {
      print(e);
    }
    setState(() {
      login = false;
    });
  }

  Email_Login() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email1!,
        password: password1!,
      );

      // var acs=ActionCodeSettings(androidPackageName: "com.example.my_ecom_app",url: "",handleCodeInApp: true, androidMinimumVersion: "23");
      // FirebaseAuth.instance.sendSignInLinkToEmail(email: email1!, actionCodeSettings: acs);
      //print(credential.user!.emailVerified.toString());
      final snackbar2 = SnackBar(
        content: const Text('Login Sucessfull'),
        action: SnackBarAction(
          label: '',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar2);

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        final snackbar0 = SnackBar(
          content: const Text('No user Found that Email'),
          action: SnackBarAction(
            label: '',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackbar0);
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        final snackbar1 = SnackBar(
          content: const Text('Wrong password'),
          action: SnackBarAction(
            label: '',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackbar1);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 170,
            ),
            login
                ? Form(
                    key: _key,
                    child: Column(
                      children: [
                        Container(
                          // decoration: nMbox,
                          margin:
                              EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (e) {
                              if (e!.isEmpty) {
                                return "Please Enter the Email ID";
                              }
                            },
                            onSaved: (e) => email = e!,
                            style: TextStyle(
                              fontFamily: "Yaahow",
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                            decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, bottom: 0, top: 0),
                                  child: Icon(Icons.alternate_email_outlined,
                                      color: Colors.black),
                                ),
                                contentPadding: EdgeInsets.all(12),
                                labelText: "Email ID"),
                          ),
                        ),
                        Container(
                          // decoration: nMbox,
                          margin:
                              EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
                          child: TextFormField(
                            obscureText: _secureText,
                            textInputAction: TextInputAction.next,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (e) {
                              if (e!.isEmpty) {
                                return "Please Enter the Password";
                              }
                              if (e.length < 8) {
                                return "password must atleast 8 char";
                              }
                            },
                            onSaved: (e) => password = e,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Yaahow",
                            ),
                            decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, bottom: 0, top: 0),
                                  child: Icon(Icons.lock_outlined,
                                      color: Colors.black),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: showHide,
                                  icon: Icon(_secureText
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                ),
                                contentPadding: EdgeInsets.all(12),
                                labelText: "Password"),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          child: Text(
                            "Signin",
                            style: TextStyle(fontFamily: "Yaahow"),
                          ),
                          onPressed: () {
                            check();
                          },
                        )
                      ],
                    ),
                  )
                : new Container(
                    child: Form(
                      key: _key1,
                      child: Column(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 140),
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (e) {
                                if (e!.isEmpty) {
                                  return "please enter the email id";
                                }
                              },
                              onSaved: (e) => email1 = e!,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Yaahow",
                                  fontWeight: FontWeight.w300),
                              decoration: InputDecoration(
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(
                                      left: 10,
                                      right: 10,
                                    ),
                                    child: Icon(Icons.alternate_email_outlined,
                                        color: Colors.black38),
                                  ),
                                  contentPadding: EdgeInsets.all(12),
                                  labelText: "Email ID"),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 20),
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (e) {
                                if (e!.isEmpty) {
                                  return "Please enter the password";
                                }
                                if (e.length < 8) {
                                  return "password character should be 8";
                                }
                              },
                              onSaved: (e) => password1 = e,
                              style: TextStyle(
                                fontFamily: "Yaahow",
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Icon(
                                    Icons.lock_outlined,
                                    color: Colors.black,
                                  ),
                                ),
                                contentPadding: EdgeInsets.all(12),
                                labelText: ("Password"),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              check_login();
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(fontFamily: "Yaahow"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
            Text(
              "or",
              style: TextStyle(fontFamily: "Yaahow", fontSize: 20),
            ),
            hide
                ? ElevatedButton(
                    onPressed: () {
                      setState(() {
                        login = false;
                        hide = false;
                        hide1 = false;
                      });
                    },
                    child: Text(
                      "Already I've a Account",
                      style: TextStyle(fontFamily: "Yaahow"),
                    ))
                : new Container(),
            hide1
                ? Text(
                    "or",
                    style: TextStyle(fontFamily: "Yaahow", fontSize: 20),
                  )
                : new Container(),
            Container(
              height: scHeight(6.5, context),
              width: scWidth(60, context),
              child: ElevatedButton(
                onPressed: () async {
                  UserCredential user = await signInWithGoogle();
                  final snackbar4 = SnackBar(
                    content: const Text('Login SucessFull!'),
                    action: SnackBarAction(
                      label: '',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar4);
                  String name = user.user!.displayName.toString();
                  String photo = user.user!.photoURL.toString();
                  Appshared.Saveloginame(name);
                  Appshared.Saveloginphoto(photo);
                  print(user.user!.email);
                  print(user.user!.phoneNumber);
                  print(user.user!.displayName);
                  print(user.user!.photoURL);
                },
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/googleicon.png",
                      height: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Login With Google",
                      style: TextStyle(
                          fontFamily: "Yaahow",
                          fontSize: 15,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(146, 233, 240, 0.6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
