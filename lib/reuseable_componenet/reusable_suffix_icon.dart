import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    required this.svgPath,

    Key? key,
  }) : super(key: key);
  final String svgPath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:25,left: 5),
      child: SvgPicture.asset(svgPath,
        height: 15,),
    );
  }
}