import 'package:ecommerce/models/product_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, this.aspectRatio=1.02, this.width=140, required this.product,required this.press,
  }) : super(key: key);
  final double aspectRatio,width;
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: SizedBox(
        width: 140,
        child: GestureDetector(
          onTap: press,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              SizedBox(height: 5,),
              Text(product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${product.price}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: (){},
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(

                          shape: BoxShape.circle
                      ),
                      child: SvgPicture.asset("assets/icons/Heart Icon_2.svg",
                        color: product.isFavourite?Color(0XFFFF48484) :kSecondaryColor.withOpacity(0.5),),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}