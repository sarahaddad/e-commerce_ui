import 'package:ecommerce/screens/login_succsesss_screen/body.dart';
import 'package:flutter/material.dart';

class LoginSuccseffully extends StatelessWidget {
  const LoginSuccseffully({Key? key}) : super(key: key);
  static String routeName='Login Succsefully';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Success',
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 25,
          ),),
        centerTitle: true,
      ),

body: loginBody(),
    );
  }
}
