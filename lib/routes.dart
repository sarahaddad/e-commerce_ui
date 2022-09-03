

import 'package:ecommerce/screens/cart_screeen/cartscreen.dart';
import 'package:ecommerce/screens/complete_profile/complete_profile_form.dart';
import 'package:ecommerce/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerce/screens/details/deatails_screen.dart';
import 'package:ecommerce/screens/forget_password/forget_password_screen.dart';
import 'package:ecommerce/screens/home_screen/home_screen.dart';
import 'package:ecommerce/screens/login_succsesss_screen/login_success.dart';
import 'package:ecommerce/screens/otp/oto_screen.dart';
import 'package:ecommerce/screens/profile_screen/profil.dart';
import 'package:ecommerce/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
final Map <String, WidgetBuilder> routes={
SplashScreen.routeName:(context)=>SplashScreen(),
SignIn.routeName:(context)=>SignIn(),
  Signup.routeName:(context)=>Signup(),
  ForgetPasswordScreen.routeName:(context)=>ForgetPasswordScreen(),
  LoginSuccseffully.routeName:(context)=>LoginSuccseffully(),
  CompleteProfileScreen.routeName:(context)=>CompleteProfileScreen(),
  Otp.routeName:(context)=>Otp(),
  HomeScreen.routeName:(context)=>HomeScreen(),
  ProductDetailScreen.routeName:(context)=>ProductDetailScreen(),
  CartScreen.routeName:(context)=>CartScreen(),
  ProfileScreen.route:(context)=>ProfileScreen(),
  
};