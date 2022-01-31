import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MenuListCard extends StatelessWidget {
  const MenuListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: HexColor('#17682E'),
          width: 2
        ),
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top : 2.0),
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset('lib/Assets/img/spagetti.png',fit: BoxFit.contain,),
                ),
                Text('Spicy spaghetti',style: TextStyle(color : HexColor('#F58634')),),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 1),
                  child: Text('Collection of Golden noodles,seasoning, spicy hot...',style: TextStyle(fontSize: 10),),
                ),
                Text('N980.90',style: TextStyle(fontSize: 16,color: HexColor('#17682E'),fontWeight: FontWeight.bold),),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4.4,
                  height: MediaQuery.of(context).size.height / 37,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: HexColor('#17682E')),
                        onPressed: () {}, child: Text('Add to card',style: TextStyle(fontSize: 11),)))
              ],
            ),
          ),
        )
    );
  }
}
