import 'package:ecommerce/screens/home_screen/speacial_offer_card.dart';
import 'package:flutter/material.dart';

class SpecialOfeers extends StatelessWidget {
  const SpecialOfeers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(

        children: [
          specialOferCard(category: 'Smart Phone',
            imageSrc: 'assets/images/Image Banner 2.png',
            press: () {  },
            numOfItems: 14,),

          specialOferCard(category: 'Fashion',
            imageSrc: 'assets/images/Image Banner 3.png',
            press: () {  },
            numOfItems: 34,),
        ],
      ),
    );
  }
}