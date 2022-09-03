import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants.dart';

class defalutTextButton extends StatelessWidget {
  const defalutTextButton({required this.text, required this.press, this.border=28}) ;
  final String text;
  final VoidCallback? press;
  final double border;

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      height: 56,

      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(border)
      ),
      child: TextButton(

          onPressed:press, child: Text(text,
        style: TextStyle(
          color: Colors.white,
          fontSize:18,

        ),)),
    );
  }
}