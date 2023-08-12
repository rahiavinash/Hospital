import 'package:flutter/material.dart';
import 'package:sai_krupa_hospital/SignIn.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "signin",
    routes: {
      "signin" :(context)=>SignIn()
    },
  ));
}
