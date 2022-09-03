import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height*0.02,
        vertical: MediaQuery.of(context).size.width*0.023, ),
      width:  double.infinity,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0XFF4A3298)
      ),
      child:Text.rich(
        TextSpan(
            text: "A summer Surprise\n",
            style: TextStyle(
              color: Colors.white,

            ),
            children: [
              TextSpan(
                  text: "Cashback 20%",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  )
              )
            ]
        ),
      ),
    );
  }
}