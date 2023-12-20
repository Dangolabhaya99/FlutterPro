import 'package:flutter/cupertino.dart';
import 'package:trendtrove/models/shoe.dart';

class Cart extends ChangeNotifier{

  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Jordan 4',
      price: '23600',
      description: 'Air Jordan is a line of basketball shoes produced by Nike, Inc. Related apparel and accessories are marketed under Jordan Brand. The silhouette of Michael Jordan served as inspiration to create the "Jumpman" logo.',
      imagePath: 'assets/images/shoe2.jpeg',
    ),

    Shoe(
        name: 'Air Jordan',
        price: '22000',
        imagePath: 'assets/images/shoe1.jpeg',
        description: 'Air Jordan is a line of basketball shoes produced by Nike, Inc. Related apparel and accessories are marketed under Jordan Brand. The silhouette of Michael Jordan served as inspiration to create the "Jumpman" logo.'
    ),

    Shoe(
        name: 'Oggy',
        price: '24000',
        imagePath: 'assets/images/shoe3.jpeg',
        description: 'Air Jordan is a line of basketball shoes produced by Nike, Inc. Related apparel and accessories are marketed under Jordan Brand. The silhouette of Michael Jordan served as inspiration to create the "Jumpman" logo.'
    ),
    Shoe(
        name: 'Temu',
        price: '19000',
        imagePath: 'assets/images/shoe4.jpeg',
        description: 'Air Jordan is a line of basketball shoes produced by Nike, Inc. Related apparel and accessories are marketed under Jordan Brand. The silhouette of Michael Jordan served as inspiration to create the "Jumpman" logo.'
    ),
    Shoe(
        name: 'Oggy',
        price: '24000',
        imagePath: 'assets/images/shoe3.jpeg',
        description: 'Air Jordan is a line of basketball shoes produced by Nike, Inc. Related apparel and accessories are marketed under Jordan Brand. The silhouette of Michael Jordan served as inspiration to create the "Jumpman" logo.'
    ),
    Shoe(
        name: 'Oggy',
        price: '24000',
        imagePath: 'assets/images/shoe3.jpeg',
        description: 'Air Jordan is a line of basketball shoes produced by Nike, Inc. Related apparel and accessories are marketed under Jordan Brand. The silhouette of Michael Jordan served as inspiration to create the "Jumpman" logo.'
    ),
    Shoe(
        name: 'Oggy',
        price: '24000',
        imagePath: 'assets/images/shoe3.jpeg',
        description: 'Air Jordan is a line of basketball shoes produced by Nike, Inc. Related apparel and accessories are marketed under Jordan Brand. The silhouette of Michael Jordan served as inspiration to create the "Jumpman" logo.'
    ),
    Shoe(
        name: 'Oggy',
        price: '24000',
        imagePath: 'assets/images/shoe3.jpeg',
        description: 'Air Jordan is a line of basketball shoes produced by Nike, Inc. Related apparel and accessories are marketed under Jordan Brand. The silhouette of Michael Jordan served as inspiration to create the "Jumpman" logo.'
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
  int getTotalItems() {
    int totalItems = 0;

    for (Shoe shoe in userCart) {
      totalItems += 1; // Assuming each item in the cart has a quantity of 1
    }

    return totalItems;
  }
  double getTotalAmount() {
    double totalAmount = 0.0;

    for (Shoe shoe in userCart) {
      totalAmount += double.parse(shoe.price);
    }

    return totalAmount;
  }
  void buyItems() {
    double totalAmount = getTotalAmount();

    // Print the total amount (you can replace this with your desired action)
    print('Total Amount: \Rs$totalAmount'); // Assuming the price is in dollars

    // Clear the user's cart after the purchase
    userCart.clear();

    notifyListeners();
  }
}