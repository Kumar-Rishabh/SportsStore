import 'package:flutter/material.dart';
import 'package:sports_store/screens/home_screen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme
            .of(context)
            .textTheme
            .apply(bodyColor: ktextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(
          seconds: 7,
          navigateAfterSeconds:AfterSplash(),
          title: Text('Welcome',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,

            ),),
          image: Image.asset('assets/images/logo.png',
          alignment: Alignment.center,),
          backgroundColor: Colors.white,
          styleTextUnderTheLoader: TextStyle(),
          photoSize: 160.0,
          loaderColor: Colors.red
      ),

    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}