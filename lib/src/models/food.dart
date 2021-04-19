import 'package:flutter_pizza_store/src/events/location_event.dart';
import 'package:flutter_pizza_store/src/models/product.dart';

abstract class Food {
  void initial() {}

  void filterByLocation(LocationType location) {}

  List<Product> products() {
    return [];
  }
}
