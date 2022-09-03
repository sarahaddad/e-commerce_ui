import 'package:ecommerce/reuseable_componenet/default_text_button.dart';
import 'package:ecommerce/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class loginBody extends StatelessWidget {
  const loginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:MediaQuery.of(context).size.height*0.04,),
        SizedBox(
          child: Image.asset("assets/images/success.png",
         height:MediaQuery.of(context).size.height*0.4,),
        ),
    Text("Login Success",style: TextStyle(color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: MediaQuery.of(context).size.width*0.07 ,),),
        Spacer(),
        SizedBox(
          width:MediaQuery.of(context).size.width*0.6 ,
            child: defalutTextButton(text: 'Back to home', press: (){
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
            border: 17,)
        ),
        Spacer(),
      ],
    );
  }
}
