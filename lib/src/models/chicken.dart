import 'package:flutter_pizza_store/src/events/location_event.dart';
import 'package:flutter_pizza_store/src/events/product_event.dart';
import 'package:flutter_pizza_store/src/models/food.dart';
import 'package:flutter_pizza_store/src/models/product.dart';
import 'package:flutter_pizza_store/src/repository/product_repository.dart';

class Chicken implements Food {
  List<Product> _products = [];

  @override
  void initial() {
    allProducts.forEach((product) {
      if (product.type == ProductType.chicken) _products.add(product);
    });
  }

  @override
  void filterByLocation(LocationType location) {
    _products
        .where((e) {
          return e.location != location;
        })
        .toList()
        .forEach((_products.remove));
  }

  @override
  List<Product> products() {
    return _products;
  }
}
