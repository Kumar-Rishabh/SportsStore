import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:sports_store/screens/login_screen.dart';
import 'package:provider/provider.dart';
import 'Components/cart.dart';
import 'Components/orders.dart';
import 'constant.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        ),
      ],
      child: MaterialApp(
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

      ),
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginScreen();
  }
}