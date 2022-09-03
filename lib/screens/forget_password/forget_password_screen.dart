import 'package:ecommerce/screens/forget_password/body_forget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);
  static String routeName="forgetPassword";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Forget Password",


          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 25,
          ),
        ),
      ),
      body: ForgetPasswordBody()
    );
  }
}
