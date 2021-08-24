import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

class ImageSliding extends StatefulWidget {
  const ImageSliding({Key? key}) : super(key: key);

  @override
  _ImageSlidingState createState() => _ImageSlidingState();
}

class _ImageSlidingState extends State<ImageSliding> {
  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];
  final List<String> letters = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
  ];

  GlobalKey<_ImageSlidingState> _sliderKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: CarouselSlider.builder(
          key: _sliderKey,
          enableAutoSlider: true,
          autoSliderDelay: Duration(seconds: 2),
          unlimitedMode: true,
          slideBuilder: (index) {
            return Container(
              alignment: Alignment.center,
              color: colors[index],
              child: Text(
                letters[index],
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            );
          },
          slideTransform: CubeTransform(),
          slideIndicator: CircularSlideIndicator(
            itemSpacing: 20,
            padding: EdgeInsets.only(bottom: 10),
          ),
          itemCount: colors.length),
    );
  }
}
