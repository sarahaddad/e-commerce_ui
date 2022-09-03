
import 'package:ecommerce/screens/login_succsesss_screen/login_success.dart';
import 'package:ecommerce/screens/otp/oto_screen.dart';
import 'package:flutter/material.dart';

import '../../reuseable_componenet/default_text_button.dart';
import '../../reuseable_componenet/reusable_suffix_icon.dart';

class CompleteProfileForm extends StatefulWidget {

  CompleteProfileForm({
    Key? key,
  }) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey=GlobalKey<FormState>();

  final List<String>errors=[];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [

            buildfirstNameForm(),
            SizedBox(height: 30,),
            buildLastNameTextFormField(),
            SizedBox(height: 30,),
            buildPhoneNumberTextFormField(),
            SizedBox(height: 30,),
            buildAddressTextFormField(),
            SizedBox(height: 40,),
            defalutTextButton(text: 'Continue', press:(){
                Navigator.pushNamed(context, Otp.routeName);
            }),



          ],
        ));
  }

  TextFormField buildfirstNameForm() {
    return TextFormField(


      validator: (value){
        if(value!.isEmpty){
          errors.add('Enter Your Email');
        }
        return 'email is required';
      },
      decoration: InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter Your First Name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgPath: "assets/icons/User.svg",),

      ),
    );
  }

  TextFormField buildLastNameTextFormField() {
    return TextFormField(

      obscureText: true,
      decoration: InputDecoration(
        labelText:  'Last Name',
        hintText: 'Enter Your Last Name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgPath: "assets/icons/User.svg",),

      ),
    );
  }

  TextFormField buildPhoneNumberTextFormField() {
    return TextFormField(
      keyboardType:TextInputType.phone,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Phone Number',
        hintText: 'Enter Your phone Number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgPath: "assets/icons/Phone.svg",),

      ),
    );

  }
  TextFormField buildAddressTextFormField() {
    return TextFormField(
      keyboardType:TextInputType.phone,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Address',
        hintText: 'Enter Your Address',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgPath: "assets/icons/Location point.svg",),

      ),
    );
  }
}
