import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration
        (
        gradient: LinearGradient(
          colors: [
           Color(0xfff9d423),Color(0xff96fbc4),
          ],

        )
       //   image: DecorationImage( image: AssetImage('Assest/register.png') ,fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Container(

            padding: EdgeInsets.only(left: 45,top: 120),
            child: Text("Sai Krupa Hospital",style: TextStyle(color: Color(0xff000000)
                ,fontSize: 35,),
            ),

          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45,left: 30,right: 30),
              child: Column(
                children: [
                  SizedBox(
                    height: 0,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        fillColor: Colors.grey.shade50,
                        filled: true,
                        border:OutlineInputBorder(borderRadius:BorderRadius.circular(50) ),
                        contentPadding: EdgeInsets.all(15) //for inside padding size
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(

                    obscureText: true,     //for hiden text when we enter something in the field
                    decoration: InputDecoration(
                        hintText: 'Password',
                        suffixIcon:IconButton(icon: Icon(Icons.remove_red_eye), onPressed: () {  },),
                        fillColor: Colors.grey.shade50,
                        filled: true,
                        border:OutlineInputBorder(borderRadius:BorderRadius.circular(50) ),
                        contentPadding: EdgeInsets.all(15)
                    ),
                  ),
                  SizedBox(height: 30,),
           TextButton(onPressed: (){

           }, child: Text("Sign In"),

               style: TextButton.styleFrom(textStyle: TextStyle(fontFamily:AutofillHints.birthday,color: Color(0xff000000) )
                   ,padding: EdgeInsets.only(left: 80,right: 80,top: 20,bottom: 20),
                   backgroundColor: Color(0xfff9d423),shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
               )

           ),
           
           //   children: [Text("SignIn ",style: TextStyle(fontSize: 27,fontWeight: FontWeight.w700),)
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){
                        //navigation
                        Navigator.pushNamed(context, "Register");
                      }, child: Text("Sign Up",style: TextStyle(decoration: TextDecoration.underline,
                          fontSize: 15,color: Colors.black),)),
                      TextButton(onPressed: (){
                        //     Navigator.pushNamed(context, "forgetPassword");
                      }, child: Text("Forgot Password",style: TextStyle(decoration: TextDecoration.underline,
                          fontSize: 15,color: Colors.black),))

                    ],
                  )
                ],
              ),
            ),
          )
        ],),
      ),
    ) ;
  }
}
