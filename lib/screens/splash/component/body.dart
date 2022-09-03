
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/reuseable_componenet/default_text_button.dart';
import 'package:ecommerce/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce/screens/splash/component/splash_content.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





class Body extends StatefulWidget {

  @override
  State<Body> createState() => _BodyState();
}
 int currentPage=0;
class _BodyState extends State<Body> {
 List <Map <String,String>> splashContentData=[
   {"text":"Welcome to Yonca ,Lets Shop",
     "image":"assets/images/splash_1.png",
   },
   {"text":"We show the easy way to shop\n just stay at home with us",
     "image":"assets/images/splash_2.png",
   },
   {"text":"Let's begin",
     "image":"assets/images/splash_3.png",
   },

 ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value){
                  setState(() {
                    currentPage=value;
                  });
                },
                itemCount: splashContentData.length,
                itemBuilder: (context, index) => SplashContent(image:splashContentData[index]["image"].toString(),
                  text:splashContentData[index]["text"].toString())),


              ),
            Expanded(
                flex:2
                ,child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
              children: [
                  Padding(
                    padding: const EdgeInsets.only(left:175),
                    child: Row(
                      children:
                        List.generate(splashContentData.length, (index) => dotbuilder(index))

                    ),
                  ),
                  Spacer(flex: 3,),
                  defalutTextButton(text: 'Continue', press: () {
                    Navigator.pushNamed(context,SignIn.routeName);
                  }
                    ,

                  ),
                Spacer(flex: 2,)
              ],

            ),

                ) ),

          ],
        ),
      ),
    );
  }

 AnimatedContainer dotbuilder(int index) {
    return AnimatedContainer(
                margin: EdgeInsets.only(right: 5),
                height: 6,
                width:currentPage==index ?20: 6,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color:currentPage==index ? kPrimaryColor:Colors.grey,
                ), duration:kAnimationDuration,
              );
  }
}




