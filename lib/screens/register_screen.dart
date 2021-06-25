import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:sports_store/Components/round_button.dart';
import 'package:sports_store/screens/home_screen.dart';

import '../constant.dart';
class RegisterScreen extends StatefulWidget {
  static const String id='login_screen';
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _auth=FirebaseAuth.instance;
  String email;
  String password;
  bool showSpinner=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    height: 200.0,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                ),
                SizedBox(
                  height: 48.0,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email=value;
                  },
                  decoration: kInputdecoration.copyWith(
                    hintText: 'Enter your email',
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password=value;
                  },
                  decoration: kInputdecoration.copyWith(
                    hintText: 'Enter your password.',
                  ),
                ),

                SizedBox(
                  height: 24.0,
                ),
                RoundButton(
                  colour: Colors.lightBlueAccent,
                  title: 'Register',
                  onpressed: () async{
                    setState(() {
                      showSpinner=true;
                    });
                    try{
                      final newUser= await _auth.createUserWithEmailAndPassword(email: email, password: password);
                      if(newUser!=null){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      }
                      setState(() {
                        showSpinner=false;
                      });
                    }
                    catch(e){
                      Alert(
                        context: context,
                        type: AlertType.error,
                        title: "Error",
                        desc: "The email address is already in use by another account.",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "OK",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () => Navigator.pop(context),
                            width: 120,
                          )
                        ],
                      ).show();
                      setState(() {
                        showSpinner=false;
                      });
                    }
                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
