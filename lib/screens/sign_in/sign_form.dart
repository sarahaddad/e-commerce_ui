
import 'package:ecommerce/screens/login_succsesss_screen/login_success.dart';
import 'package:flutter/material.dart';

import '../../reuseable_componenet/default_text_button.dart';
import '../../reuseable_componenet/reusable_suffix_icon.dart';

class signForm extends StatelessWidget {
  final _formKey=GlobalKey<FormState>();

  final List<String>errors=[];

  signForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: 20,),
            buildEmailTextFormField(),
            SizedBox(height: 20,),
            buildPasswordTextFormField(),
            SizedBox(height: 20,),
            defalutTextButton(text: 'Continue', press:(){
             Navigator.pushNamed(context, LoginSuccseffully.routeName);
            }),
            SizedBox(height: 20,),


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
}
