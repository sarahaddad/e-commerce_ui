
import 'package:ecommerce/reuseable_componenet/default_text_button.dart';
import 'package:ecommerce/screens/details/top_rounded_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/product_models.dart';
import 'build_details_card.dart';
import 'color_dots.dart';
import 'product_description.dart';

class Body extends StatelessWidget {
  const Body({Key? key,required this.product}) : super(key: key);
final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildDetailcard(product: product),
            TopRoundedContainer(color: Colors.white,
            child: ProductDescription(product: product,pressToSeeMore: (){},),
            ), 
            TopRoundedContainer(color: Color(0XFFF6F7F9),
                child: ColorDots(product: product)),
            TopRoundedContainer(color: Color(0XFFF6F7F9),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                    top: 15,
                    bottom: 40,
                  ),
                  child: defalutTextButton(
                     text: 'Add To Cart',
                    press: (){},
                  ),
                )
            )

          ],
        ),
      ),

    );
  }

}



