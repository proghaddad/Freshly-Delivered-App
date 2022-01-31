import 'package:flutter/material.dart';
import 'package:freshly_delivered_app/Widgets/Cart/cart_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Test'),
          CartList(),
        ],
      ),
    );
  }
}
