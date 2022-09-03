import 'package:ecommerce/screens/sign_up/body.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);
  static String routeName='Sign_up';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign Up",


          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 25,
          ),
        ),
      ),
      body:  SignUpBody(),
    );


  }
}
