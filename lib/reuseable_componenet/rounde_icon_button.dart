import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({required this.press,required this.iconData,

    Key? key,
  }) : super(key: key);
  final VoidCallback press;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width:40,
      child: Center(
        child: Container(

          decoration: (BoxDecoration(
            color:Colors.white,

            shape: BoxShape.circle,

          )
          ),
          child: IconButton(

            icon:Icon(iconData,size:20) , onPressed: press,

          ),
        ),
      ),
    );
  }
}