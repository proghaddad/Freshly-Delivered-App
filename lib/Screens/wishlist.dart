import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WishList extends StatefulWidget
{
  const WishList({Key? key}) : super(key: key);

  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical : 30.0),
        child: Center(
          child: Column(
            children: [
              Text('MY WISHLISTS',style: TextStyle(color: HexColor('#17682E'),fontSize: 25,fontWeight: FontWeight.w900,),),
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Image.asset('lib/Assets/img/wishlistimg.png',
                width: MediaQuery.of(context).size.width / 1,
                  height: MediaQuery.of(context).size.height / 3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text('WISHLIST EMPTY',style: TextStyle(color: HexColor('#17682E'),fontSize: 20,fontWeight: FontWeight.w900,)),
              ),
              const Padding(
                padding: EdgeInsets.only( top : 5.0),
                child: Text('You have not added any items to your wishlists.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
