import 'package:ecommerce/constants.dart';
import 'package:ecommerce/models/cart_models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import 'cart_item_card.dart';

class CartScereenBody extends StatefulWidget {
  const CartScereenBody({Key? key}) : super(key: key);

  @override
  State<CartScereenBody> createState() => _CartScereenBodyState();
}

class _CartScereenBodyState extends State<CartScereenBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: ListView.builder(
        itemCount: DemoCart.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            direction: DismissDirection.endToStart,
          key: Key(DemoCart[index].product.id.toString()),
          background: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Color(0XFFFFE6E6),
              borderRadius: BorderRadius.circular(15),

            ),child: Row(
            children: [
              Spacer(),
              SvgPicture.asset("assets/icons/Trash.svg"),

            ],
          ),
          ),
          onDismissed: (direction){
              setState(() {
                DemoCart.removeAt(index);
              });
          },
          child: CartItemCard(
            cart: DemoCart[index],
          ),
      ),
        ),)
      );

  }
}


