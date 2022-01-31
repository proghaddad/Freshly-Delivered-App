import 'package:flutter/material.dart';
import 'package:freshly_delivered_app/Screens/cart.dart';
import 'package:freshly_delivered_app/Screens/dashboard.dart';
import 'package:freshly_delivered_app/Screens/wishlist.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int _currentIndex = 0;
  final List _screens=[const DashboardPage(),const WishList(),const CartScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 25),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            onTap: (int index) => setState(() {
              _currentIndex = index;
            }),
            currentIndex: _currentIndex,
            backgroundColor: HexColor('#17682E'),
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,color: Colors.white),label: 'Wishlist'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,color: Colors.white),label: 'Cart'),
              BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.white),label: 'Settings'),
            ],
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
          ),
        ),
      ),
      body: _screens[_currentIndex],
    );
  }
}
