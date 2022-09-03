import 'package:ecommerce/constants.dart';
import 'package:ecommerce/models/cart_models.dart';
import 'package:ecommerce/models/product_models.dart';
import 'package:ecommerce/reuseable_componenet/default_text_button.dart';
import 'package:ecommerce/screens/cart_screeen/body.dart';
import 'package:ecommerce/screens/home_screen/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);
static String routeName="/cartScreen";

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: CartScereenBody(

      ),
      bottomNavigationBar: CheckOurCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
    centerTitle: true,
    title: Column(

      children: [
        Text("Your Cart",
        style: TextStyle(color: Colors.black),),
        Text("${DemoCart.length} Items",style:Theme.of(context).textTheme.caption)
      ],
    ),
    );

  }
}

class CheckOurCard extends StatelessWidget {
  const CheckOurCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
      //height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30)),
        color: Colors.white,
        boxShadow:[
          BoxShadow(
            offset: Offset(0,-15),
            blurRadius: 20,
            color: Color(0XFFDADADA).withOpacity(0.15)

          )
    ]
    ),
    child: SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 40,
                  width: 40,
                decoration: BoxDecoration(
                  color: Color(0XFFF5F6F9),
                  borderRadius: BorderRadius.circular(10),
                  
                ),
                child: SvgPicture.asset("assets/icons/receipt.svg"),
              ),
              Spacer(),
              Text("Add A Disacount Code"),
              SizedBox(width: 10,),
              Icon(Icons.arrow_forward_ios,color: kTextColor,size: 12,),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  text: "Total :\n",
                  children: [
                    TextSpan(
                      text: "\$337.15",
                      style: TextStyle(fontSize: 16,
                      color: Colors.black)
                    ),
                  ]
                )
              ),
              SizedBox(
                width:230,
                child: defalutTextButton(press: (){},text: "Check Out",),
              )
            ],
          )
        ],
      ),
    ),
    );
  }
}
