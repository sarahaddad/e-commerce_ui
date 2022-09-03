import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/product_models.dart';

class buildDetailcard extends StatefulWidget {
  const buildDetailcard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<buildDetailcard> createState() => _buildDetailcardState();
}

class _buildDetailcardState extends State<buildDetailcard> {
  int SelectedImage=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 280,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[SelectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length, (index) =>buildSmallPreview(index))
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          SelectedImage=index;
        });

      },
      child: Container(

        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(right: 10),
        height: 50,
        width: 60,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: SelectedImage==index?kPrimaryColor:Colors.transparent),
        ),
        child: Image.asset(widget.product.images[index],fit: BoxFit.fill,),
      ),
    );
  }
}
