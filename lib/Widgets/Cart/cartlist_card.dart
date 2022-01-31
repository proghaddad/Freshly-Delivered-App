import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CartListCard extends StatelessWidget {
  const CartListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
            color: HexColor('#17682E'),
            borderRadius: BorderRadius.circular(10)
        ),
          height: MediaQuery.of(context).size.height / 7,
          child: (
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              LetfImage(),
              Expanded(child: RightColumn()),
            ],
          )
          )
      ),
    );
  }
}
class LetfImage extends StatelessWidget {
  const LetfImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left : 15.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 5,
          child: Image.asset('lib/Assets/img/spagetti.png')),
    );
  }
}
class RightColumn extends StatelessWidget {
  const RightColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text('Spicy spaghetti',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              const Text('Collection of Golden noodles,seasonings,spicy hot with 100% refined soya bean oil',style:TextStyle(fontSize: 10,color: Colors.white),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('N980.90',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                  const Text('%25 off',style: TextStyle(color: Colors.white,fontSize: 12),),
                  Text('23-12-2021',style: TextStyle(color: HexColor('#F07B25'),fontSize: 12),),
                ],
              )
            ],
          ),
    );

  }
}
