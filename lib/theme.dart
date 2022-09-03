
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

ThemeData theme(){
  return ThemeData(
      appBarTheme: appBarTheme(),
      inputDecorationTheme:  inputDecorationTheme(),
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "Muli",
      textTheme: TextTheme(
        bodyText1: TextStyle(color: kTextColor),
        bodyText2:TextStyle(color: kTextColor),
      )
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(

      contentPadding: EdgeInsets.symmetric(horizontal: 40,
          vertical: 20),
      enabledBorder: outlineInputBorder(),
      focusedBorder: outlineInputBorder(),
      border: outlineInputBorder());
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color:kTextColor),

    );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
        color: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        iconTheme: IconThemeData(color: Colors.black),
       toolbarTextStyle: TextStyle(color: Colors.redAccent,
                fontSize: 18)
  );
}