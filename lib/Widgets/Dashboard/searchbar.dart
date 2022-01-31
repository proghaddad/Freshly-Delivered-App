import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return // Search Bar
      Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          decoration: BoxDecoration(
              color: HexColor('#17682E').withOpacity(0.5),
              borderRadius: BorderRadius.circular(10)
          ),
          width: MediaQuery.of(context).size.width / 1,
          height: MediaQuery.of(context).size.height / 14,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search recipes, groceries and more',
              hintStyle: TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.8)),
              prefixIcon: Icon(Icons.search,color: Colors.white.withOpacity(0.8),),
              prefixIconConstraints: const BoxConstraints(
                  minWidth: 70
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
        ),
      );
  }
}
