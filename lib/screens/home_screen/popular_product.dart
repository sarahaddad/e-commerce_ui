import 'package:ecommerce/models/product_models.dart';
import 'package:ecommerce/screens/details/deatails_screen.dart';
import 'package:ecommerce/screens/home_screen/product_card.dart';
import 'package:ecommerce/screens/home_screen/section_title.dart';
import 'package:flutter/material.dart';
class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sectionTitle(text: 'Popular Product', press: () {  },),
        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProducts.length, (index) => ProductCard(product: demoProducts[index], press: () {
                Navigator.pushNamed(context, ProductDetailScreen.routeName,arguments: ProductArguments(product: demoProducts[index]));  },),),
            ],
          ),
        ),
      ],
    );
  }
}