import 'package:ecommerce/constants.dart';
import 'package:ecommerce/reuseable_componenet/default_text_button.dart';
import 'package:ecommerce/reuseable_componenet/reusable_suffix_icon.dart';
import 'package:ecommerce/screens/forget_password/forget_password_screen.dart';
import 'package:ecommerce/screens/sign_in/sign_form.dart';
import 'package:ecommerce/screens/sign_in/social_card.dart';
import 'package:ecommerce/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
   Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool remmember=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height:MediaQuery.of(context).size.height*0.04,),
              Text("Welcome Back",
              style:TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 28,

              ),),
            Text('Sign in with your email and password \nor continue with social media',
              textAlign: TextAlign.center,),
             SizedBox(height:MediaQuery.of(context).size.height*0.08,),
              signForm(),

              RememberMe(),
              SizedBox(height:MediaQuery.of(context).size.height*0.08,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialCard(icon: "assets/icons/facebook-2.svg",press: (){},),
                  socialCard(icon: "assets/icons/google-icon.svg",press: (){},),
                  socialCard(icon: "assets/icons/twitter.svg",press: (){},),
                ],
              ),
              SizedBox(height: 10,),
              noAccountRow()

            ],
          ),
        ),
      ),
    ));
  }

  Row RememberMe() {
    return Row(
            children: [
              Checkbox(value:remmember,
                  activeColor: kPrimaryColor,
                  onChanged: (value){
                 setState(() {
                   remmember=value!;
                 });

                  }),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, ForgetPasswordScreen.routeName);
                },
                child: Text("Forget Password?",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),),
              ),

            ],

          );
  }
}

class noAccountRow extends StatelessWidget {
  const noAccountRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Dont have an account? ',style: TextStyle(
          fontSize: 16
        ),),
        GestureDetector(
          onTap: (){

          },
          child: GestureDetector(
            onTap:(){Navigator.pushNamed(context, Signup.routeName);},
            child: Text('Sign Up',style: TextStyle(
                fontSize: 16,
              color: kPrimaryColor,
            ),),
          ),
        )
      ],
    );
  }
}

