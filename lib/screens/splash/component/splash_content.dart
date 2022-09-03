import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  SplashContent({
    Key? key, required this.text, required this.image,
  }) : super(key: key);
  final String text;
  final  String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text('Yonca',style: TextStyle(
          fontSize: MediaQuery.of(context).size.width/5,
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
        ),),
        Text(text,
          textAlign: TextAlign.center,),
        Spacer(flex: 1,),
        Image.asset(image,
          height: MediaQuery.of(context).size.height/3,
          width:MediaQuery.of(context).size.width/2, ),
        Spacer(flex: 3,)
      ],
    );
  }
}