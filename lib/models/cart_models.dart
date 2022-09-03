import 'product_models.dart';

class Cart{
 final int numOfItem;
  final Product product;

  Cart( {required this.numOfItem, required this.product});

}
List<Cart>DemoCart=[
  Cart(numOfItem: 2, product: demoProducts[0]),
  Cart(numOfItem: 1, product: demoProducts[1]),
  Cart(numOfItem: 2, product: demoProducts[2]),

];