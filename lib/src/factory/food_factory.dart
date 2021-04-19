import 'package:flutter_pizza_store/src/events/product_event.dart';
import 'package:flutter_pizza_store/src/models/burger.dart';
import 'package:flutter_pizza_store/src/models/food.dart';

class FoodFactory {
  static Food getFood(ProductType type) {
    switch (type) {
      case ProductType.burger:
        return Burger();
      case ProductType.pizza:
        return Burger();
      case ProductType.chicken:
        return Burger();
      case ProductType.chips:
        return Burger();
      default:
        return Burger();
    }
  }
}
