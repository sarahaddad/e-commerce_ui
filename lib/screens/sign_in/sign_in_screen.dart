import 'package:ecommerce/screens/sign_in/body.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget{
  static String routeName='Sign_in';
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      centerTitle: true,
        title: Text("Sign In",


          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 25,
          ),
        ),
      ),
      body: Body(),
    );

  }
}
