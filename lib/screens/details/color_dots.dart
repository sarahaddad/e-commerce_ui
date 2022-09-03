import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/product_models.dart';
import '../../reuseable_componenet/rounde_icon_button.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectColor=3;
    return Row(
      children: [
        ...List.generate(product.colors.length,
                (index) => ColorDot(color: product.colors[index], isSelected: selectColor==index,)),
        Spacer(),
        RoundedIconButton(

            press: (){}, iconData: Icons.add),
        SizedBox(width: 15,),

        RoundedIconButton(

            press: (){}, iconData: Icons.remove),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({required this.color,
    this.isSelected=false,
    Key? key,

  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 2),
        padding: EdgeInsets.all(8),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          border: Border.all( color: isSelected? kPrimaryColor:Colors.transparent,),
          shape: BoxShape.circle,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),

        )
    );
  }
}

