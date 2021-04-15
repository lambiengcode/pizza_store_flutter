import 'package:flutter_pizza_store/src/blocs/product_bloc.dart';
import 'package:flutter_pizza_store/src/events/location_event.dart';
import 'package:flutter_pizza_store/src/events/product_event.dart';
import 'package:flutter_pizza_store/src/models/product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  LocationType location = LocationType.honoi;
  ProductType productType = ProductType.burger;

  List<Product> currentProducts = [];

  filter() {
    final products = ProductBloc(ProductType.burger);
    products.filterByLocation(location);
    currentProducts.addAll(products.products());
    update();
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