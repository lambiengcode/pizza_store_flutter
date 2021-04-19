import 'package:flutter_pizza_store/src/events/location_event.dart';
import 'package:flutter_pizza_store/src/events/product_event.dart';
import 'package:flutter_pizza_store/src/models/product.dart';

List<Product> allProducts = [
  Product(
    name: 'Beef Burger',
    image: 'https://freepngimg.com/thumb/burger/5-2-burger-png-thumb.png',
    description: 'Cheesy Mozarella 🍔',
    price: 6.59,
    location: LocationType.honoi,
    type: ProductType.burger,
  ),
  Product(
    name: 'Beef Burger',
    image: 'https://freepngimg.com/thumb/burger/5-2-burger-png-thumb.png',
    description: 'Cheesy Mozarella 🍔',
    price: 7.59,
    location: LocationType.saigon,
    type: ProductType.burger,
  ),
  Product(
    name: 'Beef Burger',
    image: 'https://freepngimg.com/thumb/burger/5-2-burger-png-thumb.png',
    description: 'Cheesy Mozarella 🍔',
    price: 8.59,
    location: LocationType.saigon,
    type: ProductType.burger,
  ),
  Product(
    name: 'Double Burger',
    image: 'https://freepngimg.com/thumb/burger/5-2-burger-png-thumb.png',
    description: 'Cheesy Mozarella 🍔',
    price: 9.59,
    location: LocationType.honoi,
    type: ProductType.burger,
  ),
];
