import 'package:flutter_pizza_store/src/events/product_event.dart';
import 'package:flutter_pizza_store/src/models/burger.dart';
import 'package:flutter_pizza_store/src/models/chicken.dart';
import 'package:flutter_pizza_store/src/models/chips.dart';
import 'package:flutter_pizza_store/src/models/food.dart';
import 'package:flutter_pizza_store/src/models/pizza.dart';

class FoodFactory {
  static Food getFood(ProductType type) {
    switch (type) {
      case ProductType.burger:
        return Burger();
      case ProductType.pizza:
        return Pizza();
      case ProductType.chicken:
        return Chicken();
      case ProductType.chips:
        return Chips();
      default:
        return Burger();
    }
  }
}
