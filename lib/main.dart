import 'package:flutter/material.dart';
import 'package:nike_shoes_app/screens/home/home_screen.dart';
import 'package:nike_shoes_app/screens/login/login_screen.dart';

import 'screens/boarding/welcome_scree.dart';
import 'screens/item/item_page.dart';
import 'screens/registen/registen_screen.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFCEDDEE)
      ),
      routes: {
        '/':(context) => SplashScreen(),
        'welcome':(context) => WelcomeScreen(),
        'LoginScreen':(context) => LoginScreen(),
        'RegisterScreen':(context) => RegisterScreen(),
        'homePage':(context) => HomePage(),
        'itemPage':(context) => ItemPage(),
      },
    );
  }
}

