import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    [
      "Avocado",
      "60",
      "lib/images/avocado.png",
      Color.fromARGB(255, 108, 228, 112)
    ],
    [
      "Banana",
      "40",
      "lib/images/banana.png",
      Color.fromARGB(255, 241, 228, 118)
    ],
    [
      "Chicken",
      "500",
      "lib/images/chicken.png",
      Color.fromARGB(255, 223, 139, 109)
    ],
    ["Water", "40", "lib/images/water.png", Color.fromARGB(255, 100, 178, 242)],
    [
      "Coca Cola",
      "80",
      "lib/images/coca cola.png",
      Color.fromARGB(255, 239, 106, 97)
    ],
    [
      "Mango Juice",
      "255",
      "lib/images/mangojuice.png",
      Color.fromARGB(255, 209, 222, 89)
    ],
    ["Oreo", "25", "lib/images/oreo.png", Color.fromARGB(255, 79, 185, 234)],
    [
      "KitKat",
      "100",
      "lib/images/kit kat.png",
      Color.fromARGB(255, 230, 206, 135)
    ],
    ["Beaf", "1100", "lib/images/beaf.png", Color.fromARGB(255, 239, 173, 149)],
    ["Onion", "110", "lib/images/onion.png", Color.fromARGB(255, 219, 232, 82)],
    [
      "Potato",
      "90",
      "lib/images/potatoe.png",
      Color.fromARGB(255, 233, 219, 99)
    ],
    [
      "Orange",
      "75",
      "lib/images/orange.png",
      Color.fromARGB(255, 243, 176, 75)
    ],
    [
      "Apple",
      "7.00",
      "lib/images/apple.png",
      Color.fromARGB(118, 240, 134, 127)
    ],
  ];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
