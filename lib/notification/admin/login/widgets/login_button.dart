import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 60,
       width: 250,
       decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(30),
        color: Color(0xFF147B72),
       ),
       child:const Padding(
         padding:  EdgeInsets.all(10.0),
         child: Center( 
          child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
         ),
       ),
    );
  }
}