import 'package:ecommerce/screens/complete_profile/body.dart';
import 'package:flutter/material.dart';


class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);
  static String routeName='CompleteProfile';

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign Up",


          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 25,
          ),
        ),
      ),
body: CompleteProfileBody(),
    );
  }
}
