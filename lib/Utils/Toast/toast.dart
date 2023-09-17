import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toast{

 static  toastMessage(String message){
    Fluttertoast.showToast(msg: message,
    backgroundColor: Colors.black,
    textColor:Colors.white);
  }
  static void flushbarError(String message ,BuildContext context){

   showFlushbar(context: context, flushbar: Flushbar(
     forwardAnimationCurve: Curves.decelerate,
     margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
     padding: EdgeInsets.all(15),
     message: message,backgroundColor: Colors.red,
     flushbarPosition: FlushbarPosition.TOP,
     messageColor: Colors.black ,
     reverseAnimationCurve: Curves.easeInOut,
     positionOffset: 20,
     icon: Icon(Icons.error ,size: 28,color: Colors.white,),
     duration: Duration(seconds: 3),)..show(context));

  }
}