
class Food {
  final String name;      //cheese burger
  final String description;     //a burger full of cheese
  final String imagePath;     //lib/images/cheese_burger.png
  final double price;     //220
  final FoodCategory category; //burger
  List<Addon>availableAddons;     //[extra cheese, sauce, extra patty]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

//food categories
enum FoodCategory {
  // ignore: constant_identifier_names
  Burgers,
  // ignore: constant_identifier_names
  Salads,
  // ignore: constant_identifier_names
  Sides,
  // ignore: constant_identifier_names
  Desserts,
  // ignore: constant_identifier_names
  Drinks,
}

//food addons
class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
