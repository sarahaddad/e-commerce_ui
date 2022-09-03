
import 'package:ecommerce/models/product_models.dart';
import 'package:ecommerce/screens/cart_screeen/cartscreen.dart';
import 'package:ecommerce/screens/home_screen/popular_product.dart';
import 'package:ecommerce/screens/home_screen/product_card.dart';
import 'package:ecommerce/screens/home_screen/searchfield.dart';
import 'package:ecommerce/screens/home_screen/section_title.dart';
import 'package:ecommerce/screens/home_screen/speacial_offer_card.dart';
import 'package:ecommerce/screens/home_screen/special_offers.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Icon_button_withcounter.dart';
import 'categories.dart';
import 'discount_banner.dart';

class body extends StatefulWidget {
  const body({Key? key}) : super(key: key);

  @override
  _bodyState createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchField(),
                  IconButtonWithCounter(press: () {  }, svgSorce: 'assets/icons/Bell.svg', numOfItem: '1',),
                  IconButtonWithCounter(press: () {

                    Navigator.pushNamed(context, CartScreen.routeName);
                  }, svgSorce: 'assets/icons/Cart Icon.svg', numOfItem: '3',)
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              DiscountBanner(),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              Categories(),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              sectionTitle(text: 'Special for you', press: () {  },),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              SpecialOfeers(),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              PopularProduct(),
            ],
          ),
        ),

      ),
    );
}}










