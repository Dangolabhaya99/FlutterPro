import 'package:flutter/cupertino.dart';
import 'package:trendtrove/models/shoe.dart';

class Cart extends ChangeNotifier{

  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      description: 'good but not bad',
      imagePath: 'assets/images/shoe2.jpeg',
    ),
    
    Shoe(
        name: 'Air Jordan',
        price: '220',
        imagePath: 'assets/images/shoe1.jpeg',
        description: 'good but not bad'
    ),

    Shoe(
        name: 'Oggy',
        price: '240',
        imagePath: 'assets/images/shoe3.jpeg',
        description: 'good but not bad'
    ),
    Shoe(
        name: 'Temu',
        price: '190',
        imagePath: 'assets/images/shoe4.jpeg',
        description: 'good but not bad'
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList(){
    return shoeShop;
  }

  List<Shoe> getUserCart(){
    return userCart;
  }

  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}