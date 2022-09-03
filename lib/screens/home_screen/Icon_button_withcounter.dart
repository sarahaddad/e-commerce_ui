import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class IconButtonWithCounter extends StatelessWidget {
  IconButtonWithCounter({required this.svgSorce, required this.numOfItem,required this.press,
    Key? key,
  }) : super(key: key);
  final String svgSorce;
  final String numOfItem;
  final GestureTapCallback press;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,

      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kSecondaryColor.withOpacity(0.1),

            ),
            child: SvgPicture.asset(svgSorce),
          ),
          Positioned(
            right: 0,
            top: -3,
            child: Container(

              height: 16,
              width:16,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0XFFFF4848),
                  border: Border.all(width: 1,color: Colors.white)
              ),
              child: Center(
                child: Text(numOfItem,
                  style: TextStyle(color: Colors.white,
                      height: 1,
                      fontSize: 10,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}