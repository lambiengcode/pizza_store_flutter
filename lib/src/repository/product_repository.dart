import 'package:flutter_pizza_store/src/events/location_event.dart';
import 'package:flutter_pizza_store/src/events/product_event.dart';
import 'package:flutter_pizza_store/src/models/product.dart';

List<Product> allProducts = [
  Product(
    name: 'Beef Burger',
    image: 'https://freepngimg.com/thumb/burger/5-2-burger-png-thumb.png',
    description: 'Cheesy Mozarella 🍔',
    price: 6.59,
    location: LocationType.hanoi,
    type: ProductType.burger,
  ),
  Product(
    name: 'Double Burger',
    image: 'https://freepngimg.com/thumb/burger/5-2-burger-png-thumb.png',
    description: 'Cheesy Mozarella 🍔',
    price: 7.59,
    location: LocationType.hochiminh,
    type: ProductType.burger,
  ),
  Product(
    name: 'Pig Burger',
    image:
        'https://freepngimg.com/thumb/burger%20sandwich/9-hamburger-burger-png-image-thumb.png',
    description: 'Cheesy Mozarella 🍔',
    price: 8.59,
    location: LocationType.hochiminh,
    type: ProductType.burger,
  ),
  Product(
    name: 'Chicken Burger',
    image:
        'https://freepngimg.com/thumb/burger%20sandwich/16-hamburger-burger-png-image-mac-burger-thumb.png',
    description: 'Cheesy Mozarella 🍔',
    price: 9.59,
    location: LocationType.hanoi,
    type: ProductType.burger,
  ),
  Product(
    name: 'Beef Burger',
    image: 'https://freepngimg.com/thumb/burger/5-2-burger-png-thumb.png',
    description: 'Cheesy Mozarella 🍔',
    price: 6.59,
    location: LocationType.danang,
    type: ProductType.burger,
  ),
  Product(
    name: 'Double Burger',
    image: 'https://freepngimg.com/thumb/burger/5-2-burger-png-thumb.png',
    description: 'Cheesy Mozarella 🍔',
    price: 7.59,
    location: LocationType.danang,
    type: ProductType.burger,
  ),
  Product(
    name: 'Pig Burger',
    image:
        'https://freepngimg.com/thumb/burger%20sandwich/9-hamburger-burger-png-image-thumb.png',
    description: 'Cheesy Mozarella 🍔',
    price: 8.59,
    location: LocationType.danang,
    type: ProductType.burger,
  ),
  Product(
    name: 'Chicken Burger',
    image:
        'https://freepngimg.com/thumb/burger%20sandwich/16-hamburger-burger-png-image-mac-burger-thumb.png',
    description: 'Cheesy Mozarella 🍔',
    price: 9.59,
    location: LocationType.danang,
    type: ProductType.burger,
  ),
  Product(
    name: 'Pizza Hải Sản Cocktail',
    image:
        'https://thepizzacompany.vn/images/thumbs/000/0002212_sf-cocktail_300.png',
    description: 'Tôm, cua, giăm bông,... 🍔',
    price: 6.59,
    location: LocationType.hanoi,
    type: ProductType.pizza,
  ),
  Product(
    name: 'Pizza Hải Sản Cao Cấp',
    image:
        'https://thepizzacompany.vn/images/thumbs/000/0002214_sf-deluxe_500.png',
    description: 'Tôm, cua, mực và nghêu 🍔',
    price: 7.59,
    location: LocationType.hochiminh,
    type: ProductType.pizza,
  ),
  Product(
    name: 'Pizza Tôm Cocktail',
    image:
        'https://thepizzacompany.vn/images/thumbs/000/0002216_shrimp_300.png',
    description: 'Tôm với nấm, dứa, cà chua',
    price: 8.59,
    location: LocationType.hochiminh,
    type: ProductType.pizza,
  ),
  Product(
    name: 'Pizza Hải Sản Nhiệt Đới',
    image:
        'https://thepizzacompany.vn/images/thumbs/000/0002211_tropical-sf_500.png',
    description: 'Tôm, nghêu, mực cua, dứa,...',
    price: 6.59,
    location: LocationType.hanoi,
    type: ProductType.pizza,
  ),
  Product(
    name: 'Đùi gà nướng',
    image:
        'https://freepngimg.com/thumb/chicken/22064-6-cooked-chicken-transparent-image-thumb.png',
    description: 'Cheesy Mozarella',
    price: 7.59,
    location: LocationType.hochiminh,
    type: ProductType.chicken,
  ),
  Product(
    name: 'Gà chiên nguyên con',
    image:
        'https://freepngimg.com/thumb/chicken/22095-2-cooked-chicken-image-thumb.png',
    description: 'Cheesy Mozarella',
    price: 8.59,
    location: LocationType.hochiminh,
    type: ProductType.chicken,
  ),
  Product(
    name: 'Gà nướng nguyên con',
    image:
        'https://freepngimg.com/thumb/chicken/22053-2-cooked-chicken-transparent-thumb.png',
    description: 'Cheesy Mozarella',
    price: 9.59,
    location: LocationType.hochiminh,
    type: ProductType.chicken,
  ),
  Product(
    name: 'Đùi gà nướng',
    image:
        'https://freepngimg.com/thumb/chicken/22064-6-cooked-chicken-transparent-image-thumb.png',
    description: 'Cheesy Mozarella',
    price: 7.59,
    location: LocationType.hanoi,
    type: ProductType.chicken,
  ),
  Product(
    name: 'Gà chiên nguyên con',
    image:
        'https://freepngimg.com/thumb/chicken/22095-2-cooked-chicken-image-thumb.png',
    description: 'Cheesy Mozarella',
    price: 8.59,
    location: LocationType.hanoi,
    type: ProductType.chicken,
  ),
  Product(
    name: 'Gà nướng nguyên con',
    image:
        'https://freepngimg.com/thumb/chicken/22053-2-cooked-chicken-transparent-thumb.png',
    description: 'Cheesy Mozarella',
    price: 9.59,
    location: LocationType.hanoi,
    type: ProductType.chicken,
  ),
  Product(
    name: 'Đùi gà nướng',
    image:
        'https://freepngimg.com/thumb/chicken/22064-6-cooked-chicken-transparent-image-thumb.png',
    description: 'Cheesy Mozarella',
    price: 7.59,
    location: LocationType.danang,
    type: ProductType.chicken,
  ),
  Product(
    name: 'Gà chiên nguyên con',
    image:
        'https://freepngimg.com/thumb/chicken/22095-2-cooked-chicken-image-thumb.png',
    description: 'Cheesy Mozarella',
    price: 8.59,
    location: LocationType.danang,
    type: ProductType.chicken,
  ),
  Product(
    name: 'Gà nướng nguyên con',
    image:
        'https://freepngimg.com/thumb/chicken/22053-2-cooked-chicken-transparent-thumb.png',
    description: 'Cheesy Mozarella',
    price: 9.59,
    location: LocationType.danang,
    type: ProductType.chicken,
  ),
  Product(
    name: 'Cá và Khoai tây chiên',
    image:
        'https://image.freepik.com/free-photo/british-snack-deep-fried-fish-chips_219193-2442.jpg',
    description: 'Cheesy Mozarella',
    price: 7.59,
    location: LocationType.hochiminh,
    type: ProductType.chips,
  ),
  Product(
    name: 'Khoai tây chiên',
    image:
        'https://image.freepik.com/free-photo/crispy-french-fries-with-ketchup-mayonnaise_1150-26589.jpg',
    description: 'Cheesy Mozarella',
    price: 8.59,
    location: LocationType.hochiminh,
    type: ProductType.chips,
  ),
  Product(
    name: 'Khoai tây chiên lát',
    image:
        'https://icon2.cleanpng.com/20180202/vpe/kisspng-french-fries-potato-chip-slider-food-chips-png-file-5a749c5e9b5aa9.6687710815175916466363.jpg',
    description: 'Cheesy Mozarella',
    price: 9.59,
    location: LocationType.hochiminh,
    type: ProductType.chips,
  ),
  Product(
    name: 'Khoai tây chiên',
    image:
        'https://image.freepik.com/free-photo/crispy-french-fries-with-ketchup-mayonnaise_1150-26589.jpg',
    description: 'Cheesy Mozarella',
    price: 8.59,
    location: LocationType.hanoi,
    type: ProductType.chips,
  ),
  Product(
    name: 'Khoai tây chiên lát',
    image:
        'https://image.freepik.com/free-photo/potato-chips-with-sour-cream-dipping-sauce_1339-133520.jpg',
    description: 'Cheesy Mozarella',
    price: 9.59,
    location: LocationType.hanoi,
    type: ProductType.chips,
  ),
  Product(
    name: 'Cá và Khoai tây chiên',
    image:
        'https://image.freepik.com/free-photo/british-snack-deep-fried-fish-chips_219193-2442.jpg',
    description: 'Cheesy Mozarella',
    price: 7.59,
    location: LocationType.danang,
    type: ProductType.chips,
  ),
  Product(
    name: 'Khoai tây chiên',
    image:
        'https://image.freepik.com/free-photo/crispy-french-fries-with-ketchup-mayonnaise_1150-26589.jpg',
    description: 'Cheesy Mozarella',
    price: 8.59,
    location: LocationType.danang,
    type: ProductType.chips,
  ),
  Product(
    name: 'Khoai tây chiên lát',
    image:
        'https://image.freepik.com/free-photo/potato-chips-with-sour-cream-dipping-sauce_1339-133520.jpg',
    description: 'Cheesy Mozarella',
    price: 9.59,
    location: LocationType.danang,
    type: ProductType.chips,
  ),
];
