## Flutter Pizza Hut 🍕

### Description:
- 🚀 This is mobile application using Flutter for develop a pizza store
- 🚀 Factory Method

- Create Enum ***product_type.dart*** & ***location_type.dart***
```dart
enum ProductType {
  burger,
  pizza,
  chicken,
  chips,
}

enum LocationType {
  hanoi,
  danang,
  hochiminh,
}
```

- Create Abstract Class - ***food.dart***
```dart
import 'package:flutter_pizza_store/src/events/location_event.dart';
import 'package:flutter_pizza_store/src/models/product.dart';

abstract class Food {
  void initial() {}

  void filterByLocation(LocationType location) {}

  List<Product> products() {
    return [];
  }
}
```

- Create Concrete Class - ***burger.dart***, similar with ***pizza.dart, chicken.dart, chips.dart***
```dart
import 'package:flutter_pizza_store/src/events/location_event.dart';
import 'package:flutter_pizza_store/src/events/product_event.dart';
import 'package:flutter_pizza_store/src/models/food.dart';
import 'package:flutter_pizza_store/src/models/product.dart';
import 'package:flutter_pizza_store/src/repository/product_repository.dart';

class Burger implements Food {
  List<Product> _products = [];

  @override
  void initial() {
    allProducts.forEach((product) {
      if (product.type == ProductType.burger) _products.add(product);
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
```

- Create Factory Class - ***food_factory.dart*** 
```dart
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
```

### How I can run it? 
- 🚀 Clone this repo
- 🚀 Run below code in terminal of project
```terminal
flutter pub get
flutter run
```

### Screenshots

<p> 
<img src="https://github.com/hongvinhmobile/flutter_pizza_store/blob/master/screenshots/home.png?raw=true" width="200px"/>
</p>

#### Author: lambiengcode
