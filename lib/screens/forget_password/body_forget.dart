import 'package:ecommerce/reuseable_componenet/default_text_button.dart';
import 'package:ecommerce/screens/login_succsesss_screen/login_success.dart';
import 'package:flutter/material.dart';

import '../../reuseable_componenet/reusable_suffix_icon.dart';
import '../sign_in/body.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(

              children: [
                SizedBox(height:MediaQuery.of(context).size.height*0.04,),
               Text("Forget Password",style: TextStyle(color: Colors.black,
                   fontWeight: FontWeight.bold,
                   fontSize: 28),
               ),
                Text('please enter your email and we  will \nsend a link to return to your account',
                  textAlign: TextAlign.center,),
                SizedBox(height:MediaQuery.of(context).size.height*0.1,),
              ForgetEmailFormField(),
                SizedBox(height:MediaQuery.of(context).size.height*0.1,),
                defalutTextButton(text: 'Continue', press:(){
                  Navigator.pushNamed(context, LoginSuccseffully.routeName);
                }),
                SizedBox(height:MediaQuery.of(context).size.height*0.1,),
                noAccountRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
TextFormField ForgetEmailFormField() {
  List <String> errors=[];
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