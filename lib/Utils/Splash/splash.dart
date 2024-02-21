import 'package:flutter/material.dart';
import 'package:sai_krupa_hospital/SignIn.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
   Future.delayed(const Duration(seconds:1 ),(){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignIn()));

   });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: Image.asset('Assest/register.png'),
        ),
      ),
    );
  }
}
