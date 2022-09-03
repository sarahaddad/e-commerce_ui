
import 'package:flutter/material.dart';

import '../../constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width*0.64,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),

      ),
      child: TextField(
        onChanged: (value){
          //searching for product
        },
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Search Product",
            contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 9),
            prefixIcon:Icon( Icons.search,)
        ),
      ),

    );
  }
}
