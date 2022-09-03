import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../reuseable_componenet/rounde_icon_button.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final rating;

  const CustomAppbar({Key? key, required this.rating}) : super(key: key);
  @override
  Size get preferredSize =>  Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:15,vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconButton(
            press: (){Navigator.pop(context);}, iconData: Icons.arrow_back_ios,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14,vertical: 3),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Text(rating.toString(),
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 5,),
                  SvgPicture.asset("assets/icons/Star Icon.svg"),
                ],
              ),

            ),

          ],

        ),
      ),
    );
  }
}