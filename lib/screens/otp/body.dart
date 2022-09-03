import 'package:ecommerce/constants.dart';
import 'package:ecommerce/reuseable_componenet/default_text_button.dart';
import 'package:ecommerce/screens/otp/oto_form.dart';
import 'package:ecommerce/theme.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height:MediaQuery.of(context).size.height*0.05,),
              Text("OTP Verification",
                style:TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,

                ),),
              Text('we sent you a code to 0538****   ',
               ),
              buildTimer(),
              SizedBox(height:MediaQuery.of(context).size.height*0.15,),
                  OtpForm(),
              SizedBox(height:MediaQuery.of(context).size.height*0.1,),
              GestureDetector(

                  child: Text(
                "Resent Otp Code",
                style: TextStyle(decoration: TextDecoration.underline),),
                onTap:(){}),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(" This code will expired in "),
                TweenAnimationBuilder(tween: Tween(begin: 30.0,end: 0.00),
                    duration: Duration(seconds: 30),
                    builder:(context,value,child)=>Text("00:${value}",
                    style: TextStyle(
                      color: kPrimaryColor,
                    ),),
                onEnd: (){}
                ,),
            ],
          );

  }
}
