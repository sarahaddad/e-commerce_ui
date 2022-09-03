import 'package:ecommerce/enum.dart';
import 'package:ecommerce/reuseable_componenet/custom_bottom_nav.dart';
import 'package:ecommerce/screens/profile_screen/profile_body.dart';

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
 static String route="/Profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title: Text("Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
body: ProfileBody(),
      bottomNavigationBar:  CustomBottomNavBar(selectedMenu: MenuState.profile,),


    );
  }
}
