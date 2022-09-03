import 'package:ecommerce/screens/sign_up/signup_form.dart';
import 'package:flutter/material.dart';

import '../sign_in/social_card.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height:MediaQuery.of(context).size.height*0.02,),
              Text("Register Account",
                style:TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,

                ),),
              Text('Complete with details or  \n continue with social media',
                textAlign: TextAlign.center,),
              SizedBox(height:MediaQuery.of(context).size.height*0.08,),
              signupForm(),
              SizedBox(height:MediaQuery.of(context).size.height*0.08,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialCard(icon: "assets/icons/facebook-2.svg",press: (){},),
                  socialCard(icon: "assets/icons/google-icon.svg",press: (){},),
                  socialCard(icon: "assets/icons/twitter.svg",press: (){},),
                ],
              ),
              SizedBox(height: 20,),
              Text("By contiuing you are confirm that you agree \nwith our team and condition",
                textAlign: TextAlign.center,)

            ],

          ),
        ),
      ),
    );
  }
}
