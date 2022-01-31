import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Sliderimages extends StatefulWidget {
  Sliderimages({Key? key}) : super(key: key);

  @override
  State<Sliderimages> createState() => _SliderimagesState();
}

class _SliderimagesState extends State<Sliderimages> {
  final urlImages = [
    'lib/Assets/img/carousel 1.png',
    'lib/Assets/img/carousel 2.png',
    'lib/Assets/img/carousel last.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Center(
        child:CarouselSlider.builder(
            itemCount: urlImages.length,
            itemBuilder: (context,index,realIndex) {
      final  urlImage = urlImages[index];

      return buildImage(urlImage, index);
      },
            options: CarouselOptions(
              autoPlay: false,
              height: 200,
              viewportFraction: 1
            ),
        ),
      ),
    );
  }
}

Widget buildImage(String urlImage, index) => Container(
  margin: const EdgeInsets.symmetric(horizontal: 10),
  child: Image.asset(urlImage,fit: BoxFit.contain),
);