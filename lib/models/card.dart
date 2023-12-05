import 'package:eco/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
//list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '345',
      imagePath: 'assets/images/2.jpg',
      description: 'H1',
    ),
    Shoe(
      name: '123',
      price: '34',
      imagePath: 'assets/images/3.jpg',
      description: 'h2',
    ),
    Shoe(
      name: 'product 1',
      price: '56',
      imagePath: 'assets/images/4.jpg',
      description: 'H3',
    ),
    Shoe(
      name: 'product 3',
      price: '343',
      imagePath: 'assets/images/5.jpg',
      description: 'h5',
    ),
  ];
  //list of itme in uers cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItem(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
