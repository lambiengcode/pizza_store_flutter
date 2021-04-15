import 'dart:async';

import 'package:flutter_pizza_store/src/blocs/product_bloc.dart';
import 'package:flutter_pizza_store/src/events/location_event.dart';
import 'package:flutter_pizza_store/src/events/product_event.dart';
import 'package:flutter_pizza_store/src/models/product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  StreamController<List<Product>> productController =
      StreamController<List<Product>>.broadcast();
  LocationType location = LocationType.honoi;
  ProductType productType = ProductType.burger;
  filter() {
    final products = ProductBloc(ProductType.burger);
    products.filterByLocation(location);
    productController.add(products.products());
    print(products.products()[0].name);
  }

  setLocation(currentLocation) {
    location = currentLocation;
    filter();
    update();
  }

  setProductType(currentProductType) {
    productType = currentProductType;
  }
}
