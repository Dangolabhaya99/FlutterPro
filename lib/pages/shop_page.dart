import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trendtrove/components/shoe_tile.dart';
import 'package:trendtrove/models/cart.dart';
import 'package:trendtrove/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    showDialog(context: context,
        builder: (context) => AlertDialog(
          title: Text('Successfully added!'),
          content: Text('Check your cart'),
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child )=> Column(
    children: [
    Container(
        padding: EdgeInsets.all(12),
      decoration: BoxDecoration(color: Colors.grey[100]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Search',
            style: TextStyle(color: Colors.grey),
          ),
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ],
      ),
    ),

    Padding(
    padding: const EdgeInsets.symmetric(vertical: 25.0),
    child: Text(
    'everyone flies.. some fly longer than ohters',
    style: TextStyle(color: Colors.grey[600]),
    ),
    ),

    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: const [
    Text('Hot Picks',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    ),
    ),
    Text(
    'See all',
    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),)
    ],),
    ),

    const SizedBox(height:10),

    Expanded(
    child: ListView.builder(
    itemCount: 4,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index){
    Shoe shoe = value.getShoeList()[index];
    return ShoeTile(
    shoe: shoe,
      onTap: () => addShoeToCart(shoe),
    );
    },
    ),
    ),

    const Padding(
    padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
    child: Divider(
    color: Colors.white,


    ),
    )
    ],
    ),
    );
  }
}
