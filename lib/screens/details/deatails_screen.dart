import 'package:ecommerce/screens/details/body.dart';
import 'package:ecommerce/screens/home_screen/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/product_models.dart';
import '../../reuseable_componenet/rounde_icon_button.dart';
import 'custom_app_bar.dart';
class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);
  static String routeName="/ProductDetailScreen";


  @override
  Widget build(BuildContext context) {
    final  arguments=ModalRoute.of(context)!.settings.arguments as ProductArguments;
    return Scaffold(
      backgroundColor: Color(0XFFF5F6F9),
         appBar: CustomAppbar(rating:arguments.product.rating,),
      body: Body(product: arguments.product,),
    );

  }

}


class ProductArguments{
  final Product  product;
  ProductArguments({required this.product});
}
