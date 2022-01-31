import 'package:flutter/material.dart';
import 'package:freshly_delivered_app/Widgets/Cart/cartlist_card.dart';

class CartList extends StatelessWidget {
  CartList({Key? key}) : super(key: key);
  var spagettiList = <CartListCard>[
    CartListCard(),
    CartListCard(),
    CartListCard(),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      width: MediaQuery.of(context).size.width / 1,
      child: ListView.builder(
          itemCount: spagettiList.length,
          itemBuilder: (context, index) => const CartListCard(),
          ),
    );
  }
}
