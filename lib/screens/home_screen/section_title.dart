import 'package:flutter/material.dart';

class sectionTitle extends StatelessWidget {
  sectionTitle({required this.text,required this.press});

  final String text;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
          style: TextStyle(fontSize:18,
              color: Colors.black),
        ),
        GestureDetector(child: Text("See More"),
            onTap: press),
      ],
    );
  }
}