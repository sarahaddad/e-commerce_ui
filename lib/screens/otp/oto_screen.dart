import 'package:ecommerce/screens/otp/body.dart';
import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);
  static String routeName='otp';

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("OTP verification",


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
