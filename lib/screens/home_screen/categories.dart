
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatelessWidget {




  Widget build(BuildContext context) {
    @override
    List<Map <String,dynamic>> categories=[
      {"icon" :"assets/icons/Flash Icon.svg", "text":"Flash deal"},
      {"icon" :"assets/icons/Bill Icon.svg", "text" :"Bill"},
      { "icon" :"assets/icons/Gift Icon.svg", "text":"Daily gift"},
      {"icon":"assets/icons/Game Icon.svg", "text":"Game"},
      {"icon":"assets/icons/Discover.svg", "text":"More"},

    ];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(categories.length, (index) =>
            CategoriedCard(icon: categories[index]["icon"],
                text:categories[index]["text"],
                press: (){}))
      ],
    );
  }
}

class CategoriedCard extends StatelessWidget {
  CategoriedCard({
    Key? key,
    required this.icon,required this.text,required this.press
  }) : super(key: key);

  final String text,icon;
  GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: MediaQuery.of(context).size.width*0.15,
        height:  MediaQuery.of(context).size.height*0.15,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0XFFFFECDF),
                  borderRadius: BorderRadius.circular(10),

                ),
                child: SvgPicture.asset(icon),


              ),
            ),
            const SizedBox(height: 10,),
            Text(text,
              textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}
