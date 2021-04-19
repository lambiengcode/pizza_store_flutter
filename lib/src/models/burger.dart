import 'package:flutter_pizza_store/src/events/location_event.dart';
import 'package:flutter_pizza_store/src/models/food.dart';
import 'package:flutter_pizza_store/src/models/product.dart';

class Burger implements Food {
  List<Product> _products = [
    Product(
      name: 'Beef Burger',
      image: 'https://freepngimg.com/thumb/burger/5-2-burger-png-thumb.png',
      description: 'Cheesy Mozarella 🍔',
      price: 6.59,
      type: LocationType.honoi,
    ),
    Product(
      name: 'Beef Burger',
      image: 'https://freepngimg.com/thumb/burger/5-2-burger-png-thumb.png',
      description: 'Cheesy Mozarella 🍔',
      price: 7.59,
      type: LocationType.saigon,
    ),
    Product(
      name: 'Beef Burger',
      image: 'https://freepngimg.com/thumb/burger/5-2-burger-png-thumb.png',
      description: 'Cheesy Mozarella 🍔',
      price: 8.59,
      type: LocationType.saigon,
    ),
    Product(
      name: 'Double Burger',
      image: 'https://freepngimg.com/thumb/burger/5-2-burger-png-thumb.png',
      description: 'Cheesy Mozarella 🍔',
      price: 9.59,
      type: LocationType.honoi,
    ),
  ];
  @override
  void filterByLocation(LocationType location) {
    _products
        .where((e) {
          return e.type != location;
        })
        .toList()
        .forEach((_products.remove));
  }

  @override
  List<Product> products() {
    return _products;
  }
}
