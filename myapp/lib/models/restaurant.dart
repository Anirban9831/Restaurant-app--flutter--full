import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/models/cart_item.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burger
    Food(
      name: "Classic Chiicken Cheeseburger",
      description: "A juicy chicken berger",
      imagePath: "lib/images/burger/pngwing.com.png",
      price: 220,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 60),
        Addon(name: "Extra chicken", price: 80),
        Addon(name: "Extra Meyonese", price: 20),
      ],
    ),
    Food(
      name: "Classic Sausage Cheeseburger",
      description: "A juicy Sausage berger",
      imagePath: "lib/images/burger/pngwing.com(3).png",
      price: 220,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 60),
        Addon(name: "Extra chicken", price: 80),
        Addon(name: "Extra Meyonese", price: 20),
      ],
    ),
    Food(
      name: "Classic Combo Cheeseburger 2",
      description: "A juicy Chicken berger with French fries and Coke 500ml",
      imagePath: "lib/images/burger/pngwing.com(1).png",
      price: 220,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 60),
        Addon(name: "Extra chicken", price: 80),
        Addon(name: "Extra Meyonese", price: 20),
      ],
    ),
    Food(
      name: "Classic Combo Cheeseburger 1",
      description: "A juicy Chicken berger and French fries",
      imagePath: "lib/images/burger/pngwing.com(4)_burger.png",
      price: 220,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 60),
        Addon(name: "Extra chicken", price: 80),
        Addon(name: "Extra Meyonese", price: 20),
      ],
    ),

    //sides
    Food(
      name: "Classic french fries",
      description: "A Fresh and salty French fries",
      imagePath: "lib/images/sides/pngwing.com(1)_sides.png",
      price: 100,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Extra fries", price: 60),
        Addon(name: "Extra butter", price: 20),
        Addon(name: "Extra Meyonese", price: 20),
      ],
    ),
    Food(
      name: "Classic Poach",
      description: "A Fresh egg poach",
      imagePath: "lib/images/sides/pngwing.com_sides.png",
      price: 50,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Extra egg", price: 30),
        Addon(name: "Extra butter", price: 20),
        Addon(name: "Extra sauce", price: 20),
      ],
    ),
    Food(
      name: "Classic Sushi",
      description: "A Fresh fish sushi",
      imagePath: "lib/images/sides/pngwing.com(2)_sides.png",
      price: 50,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Extra rice", price: 30),
        Addon(name: "Extra butter", price: 20),
        Addon(name: "Extra sauce", price: 20),
      ],
    ),
    Food(
      name: "Classic Potato chips ",
      description: "Freshly cut potato chips",
      imagePath: "lib/images/sides/pngwing.com(1)_sides.png",
      price: 50,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Extra chips", price: 30),
        Addon(name: "Extra masala", price: 20),
        Addon(name: "Extra sauce", price: 20),
      ],
    ),

    //drinks
    Food(
      name: "Classic Coffee ",
      description: "Freshly crushed coffee black",
      imagePath: "lib/images/drinks/pngwing.com(8).png",
      price: 50,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Extra sugar", price: 10),
      ],
    ),
    Food(
      name: "Classic Coffee ",
      description: "Freshly crushed coffee black",
      imagePath: "lib/images/drinks/pngwing.com(8).png",
      price: 50,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Extra sugar", price: 10),
      ],
    ),
    Food(
      name: "Classic Coffee ",
      description: "Freshly crushed coffee black",
      imagePath: "lib/images/drinks/pngwing.com(8).png",
      price: 50,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Extra sugar", price: 10),
      ],
    ),
    Food(
      name: "Classic Coffee ",
      description: "Freshly crushed coffee black",
      imagePath: "lib/images/drinks/pngwing.com(8).png",
      price: 50,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Extra sugar", price: 10),
      ],
    ),

    //desserts
    Food(
      name: "Strawbeery cheesecake ",
      description: "Freshly Strawbeerry Cheesecake",
      imagePath: "lib/images/deserts/pngwing.com(4).png",
      price: 50,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Extra sugar", price: 10),
      ],
    ),
    Food(
      name: "Classic Coffee ",
      description: "Freshly crushed coffee black",
      imagePath: "lib/images/deserts/pngwing.com(4).png",
      price: 50,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Extra sugar", price: 10),
      ],
    ),
    Food(
      name: "Classic Coffee ",
      description: "Freshly crushed coffee black",
      imagePath: "lib/images/deserts/pngwing.com(4).png",
      price: 50,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Extra sugar", price: 10),
      ],
    ),
    Food(
      name: "Classic Coffee ",
      description: "Freshly crushed coffee black",
      imagePath: "lib/images/deserts/pngwing.com(4).png",
      price: 50,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Extra sugar", price: 10),
      ],
    ),

    //deserts
    Food(
      name: "Classic Salad ",
      description: "Freshly cut salad",
      imagePath: "lib/images/salads/pngwing.com(12).png",
      price: 50,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra sugar", price: 10),
      ],
    ),
    Food(
      name: "Classic Salad ",
      description: "Freshly cut salad",
      imagePath: "lib/images/salads/pngwing.com(12).png",
      price: 50,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra sugar", price: 10),
      ],
    ),
    Food(
      name: "Classic Salad ",
      description: "Freshly cut salad",
      imagePath: "lib/images/salads/pngwing.com(12).png",
      price: 50,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra sugar", price: 10),
      ],
    ),
    Food(
      name: "Classic Salad ",
      description: "Freshly cut salad",
      imagePath: "lib/images/salads/pngwing.com(12).png",
      price: 50,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra sugar", price: 10),
      ],
    ),
  ];
  
  //user cart
  final List<CartItem> _cart = [];

  //delivery addres
  String _deliveryAddress='Set the location Please....';

  /*
  G E T T E R S
  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*
  O P E R A T I O N S
  */

  //###################################################################################  Add to cart
  //add from cart
  void addtoCart(Food food, List<Addon> selectedAdddons) {
    //see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food iteams are the same
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAdddons, selectedAdddons);
      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    }

    //Otherwise, add a new cart item
    else {
      _cart.add(
        CartItem(food: food, selectedAdddons: selectedAdddons),
      );
    }
    notifyListeners();
  }

  //################################################################################### Remove from cart
  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartItem != 1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price as double;
      for (Addon addon in cartItem.selectedAdddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get total number of items
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //update delivery address
  void updateDeliveryAddress(String newAddress){
    _deliveryAddress=newAddress;
    notifyListeners();
  }
  /*
  H E L P E R
  */

  //generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();
    //format the date
    String formattedDate =
        DateFormat('yyyy-MM--dd                   HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("------------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formarPrice(cartItem.food.price)}");
      if (cartItem.selectedAdddons.isNotEmpty) {
        receipt
            .writeln("   Add-ons: ${_formatAddons(cartItem.selectedAdddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("------------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formarPrice(getTotalPrice())}");

    return receipt.toString();
  }

  //format double value into money
  String _formarPrice(double price) {
    return "\₹ ${price.toStringAsFixed(2)}";
  }

  //format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name}(${_formarPrice(addon.price)})")
        .join(", ");
  }
}
