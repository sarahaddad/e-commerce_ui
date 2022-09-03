
import 'package:ecommerce/screens/complete_profile/complete_profile_screen.dart';

import 'package:flutter/material.dart';

import '../../reuseable_componenet/default_text_button.dart';
import '../../reuseable_componenet/reusable_suffix_icon.dart';

class signupForm extends StatelessWidget {
  final _formKey=GlobalKey<FormState>();

  final List<String>errors=[];

  signupForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [

            buildEmailTextFormField(),
            SizedBox(height: 30,),
            buildPasswordTextFormField(),
            SizedBox(height: 30,),
            buildConfirmPasswordTextFormField(),
            SizedBox(height: 40,),
            defalutTextButton(text: 'Continue', press:(){
             Navigator.pushNamed(context,CompleteProfileScreen.routeName);
            }),



          ],
        ));
  }

  TextFormField buildEmailTextFormField() {
    return TextFormField(

      keyboardType: TextInputType.emailAddress,
      validator: (value){
        if(value!.isEmpty){
          errors.add('Enter Your Email');
        }
        return 'email is required';
      },
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter Your Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgPath: "assets/icons/Mail.svg",),

      ),
    );
  }

  TextFormField buildPasswordTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter Your Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgPath: "assets/icons/Lock.svg",),

      ),
    );
  }
  TextFormField buildConfirmPasswordTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Confirm Password',
        hintText: 'Re-Enter Your Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgPath: "assets/icons/Lock.svg",),

      ),
    );
  }
}
