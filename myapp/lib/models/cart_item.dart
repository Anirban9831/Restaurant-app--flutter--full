
import 'package:myapp/models/food.dart';

class CartItem{
  Food food;
  List<Addon>selectedAdddons;
  int quantity;

  CartItem({
    required this.food,
    required this.selectedAdddons,
    this.quantity =1,
  });

  double get totalPrice{
    double addonPrice=selectedAdddons.fold(0,(sum,addon)=>sum + addon.price);
    return (food.price+addonPrice)*quantity;
  }
}