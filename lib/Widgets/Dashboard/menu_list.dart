import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freshly_delivered_app/Widgets/Dashboard/menulist_card.dart';

class MenuList extends StatelessWidget {
  MenuList({Key? key}) : super(key: key);
  var CardList = <MenuListCard>[
    MenuListCard(),
    MenuListCard(),
    MenuListCard(),
    MenuListCard(),
    MenuListCard(),
    MenuListCard(),
    MenuListCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1,
      height: MediaQuery.of(context).size.height / 4.2,
      child: CarouselSlider.builder(
          itemCount: CardList.length,
          itemBuilder: (context,index,realIndex) {
            return CardList[index];
          },
          options: CarouselOptions(
            viewportFraction: 0.33
          ))
    );
  }
}
