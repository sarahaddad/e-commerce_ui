import 'package:ecommerce/screens/complete_profile/complete_profile_form.dart';
import 'package:flutter/material.dart';

import '../sign_up/signup_form.dart';

class CompleteProfileBody extends StatefulWidget {
  const CompleteProfileBody({Key? key}) : super(key: key);

  @override
  State<CompleteProfileBody> createState() => _CompleteProfileBodyState();
}

class _CompleteProfileBodyState extends State<CompleteProfileBody> {
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
                Text("Complete Profile",
                  style:TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,

                  ),),
                Text('Complete with details or  \n continue with social media',
                  textAlign: TextAlign.center,),
                SizedBox(height:MediaQuery.of(context).size.height*0.05,),
                CompleteProfileForm(),
                SizedBox(height:MediaQuery.of(context).size.height*0.05,),


                Text("By contiuing you are confirm that you agree \nwith our team and condition",
                  textAlign: TextAlign.center,)

              ],

            ),
          ),
        ),
      );
    }
}
