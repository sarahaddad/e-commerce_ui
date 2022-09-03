
import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

import '../../reuseable_componenet/default_text_button.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  @override
  void initState() {
    pin2FocusNode=FocusNode();
    pin3FocusNode=FocusNode();
    pin4FocusNode=FocusNode();

  }
  @override
  void dispose() {
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();

    super.dispose();
  }
  void nextField( {FocusNode? focusNode,String? value="0"}){
    if(value!.length==1){
      focusNode!.requestFocus();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(

                  width: MediaQuery.of(context).size.width*0.15,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    autofocus: true,
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    decoration:otpFormDecoration(),
                    onChanged: (value){
                      nextField(value:value, focusNode:pin2FocusNode);
                    },
                  ),
                ),
                SizedBox(

                  width: MediaQuery.of(context).size.width*0.15,
                  child: TextFormField(
                    focusNode: pin2FocusNode,
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    decoration:otpFormDecoration(),
                    onChanged: (value){
                      nextField(value:value, focusNode:pin3FocusNode);
                    },
                  ),
                ),
                SizedBox(

                  width: MediaQuery.of(context).size.width*0.15,
                  child: TextFormField(
                    maxLength: 1,
                    focusNode: pin3FocusNode,
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    decoration:otpFormDecoration(),
                    onChanged: (v){
                      nextField(value:v, focusNode:pin4FocusNode);
                    },
                  ),
                ),
                SizedBox(

                  width: MediaQuery.of(context).size.width*0.15,
                  child: TextFormField(
                    focusNode: pin4FocusNode,
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    maxLength: 1,
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    decoration:otpFormDecoration(),
                    onChanged: (value){
                      pin4FocusNode?.unfocus();
                    },
                  ),
                ),

              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.15,),
            defalutTextButton(text: "Continue", press:(){})
          ],
        )
    );
  }




}
