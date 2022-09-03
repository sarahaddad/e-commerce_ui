import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/cart_models.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({ required this.cart,
    Key? key,
  }) : super(key: key);
  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 88,
          child:
          AspectRatio(aspectRatio: 0.88,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0XFFF5F6F9),
                borderRadius: BorderRadius.circular(15),

              ),
              child: Image.asset(cart.product.images[0]),

            ),
          ),
        ),
        SizedBox(width: 20,),
        Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(DemoCart[0].product.title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ), maxLines: 2,),
            SizedBox(height: 10,),
            Text.rich(
                TextSpan(
                    text: "\$ ${cart.product.price}",
                    style: TextStyle(color: kPrimaryColor),
                    children: [
                      TextSpan(
                        text: " X${cart.numOfItem}",
                        style: TextStyle(color: kTextColor),),
                    ]
                )
            )
          ],
        )
      ],
    );
  }
}