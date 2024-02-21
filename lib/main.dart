import 'package:flutter/material.dart';
import 'package:sai_krupa_hospital/SignIn.dart';
import 'package:sai_krupa_hospital/Utils/Splash/splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "splash",
    routes: {
      "splash" :(context)=>SplashScreen()
    },
  ));
}
