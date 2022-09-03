
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class socialCard extends StatelessWidget {
  const socialCard({

    Key? key,required this.icon, required this.press,
  }) : super(key: key);
  final String icon;
  final VoidCallback? press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Color(0XFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),

      ),
    );
  }
}

