import 'package:flutter/material.dart';

class specialOferCard extends StatelessWidget {
  const specialOferCard({
    Key? key, required this.imageSrc, required this.category,required this.numOfItems, required this.press,
  }) : super(key: key);

  final String imageSrc,category;
  final int numOfItems;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: SizedBox(
          height:MediaQuery.of(context).size.width*0.25 ,
          width:MediaQuery.of(context).size.width*0.63,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                SizedBox(
                  height:MediaQuery.of(context).size.width*0.25 ,
                  width:MediaQuery.of(context).size.width*0.63,
                  child: Image.asset(imageSrc,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(

                  decoration: BoxDecoration(

                      gradient:LinearGradient (
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors:[
                            Color(0xFF343434).withOpacity(0.4),
                            Color(0xFF343434).withOpacity(0.16),
                          ]
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: Text.rich(
                        TextSpan(
                            style: TextStyle(color: Colors.white),
                            children: [
                              TextSpan(text: '$category\n',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: "$numOfItems Brand"),
                            ]
                        )
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}