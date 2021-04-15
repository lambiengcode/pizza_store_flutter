import 'package:flutter_pizza_store/src/events/location_event.dart';
import 'package:flutter_pizza_store/src/events/product_event.dart';
import 'package:flutter_pizza_store/src/models/burger.dart';
import 'package:flutter_pizza_store/src/models/product.dart';

abstract class ProductBloc {
  factory ProductBloc(ProductType type) {
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

  void filterByLocation(LocationType location) {}

  List<Product> products() {
    return [];
  }
}
