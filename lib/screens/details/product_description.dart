import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../models/product_models.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,required this.pressToSeeMore
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressToSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(product.title,
              style: Theme.of(context).textTheme.headline6),
        ),
        const SizedBox(height: 5,),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
              padding: EdgeInsets.all(15),
              width: 64,
              decoration: BoxDecoration(
                color: product.isFavourite? Color(0XFFFFE6E6):Color(0XFFF5F6F9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),

              ),
              child: SvgPicture.asset("assets/icons/Heart Icon_2.svg"
                  ,color: product.isFavourite? Color(0XFFFF4848):Color(0XFFDBDEE4))
          ),
        ),
        Padding(
          padding:EdgeInsets.only(
            left: 20,
            right: 64,
          ),
          child: Text(product.description,
            maxLines: 3,),

        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: GestureDetector(
            onTap:pressToSeeMore,
            child: Row(
              children: [
                Text("See more details",
                  style: TextStyle(fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),),
                Icon(Icons.arrow_forward_ios,
                  color: kPrimaryColor,
                  size: 12,)
              ],
            ),
          ),
        )
      ],
    );
  }
}