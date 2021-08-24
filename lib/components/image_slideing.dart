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
  final List<String> imagesList = [
    "https://image.shutterstock.com/image-vector/illustration-batsman-bowler-playing-cricket-260nw-1931369558.jpg",
    "https://image.shutterstock.com/image-vector/illustration-batsman-bowler-playing-cricket-260nw-628449197.jpg",
    "https://image.shutterstock.com/image-photo/multi-sports-players-collage-isolated-260nw-1093671776.jpg",
    "https://image.shutterstock.com/image-vector/polygonal-geometric-professional-basketball-player-260nw-298500371.jpg",
    "https://image.shutterstock.com/image-vector/vector-concept-soccer-player-watercolor-260nw-196880318.jpg",
    "https://image.shutterstock.com/image-vector/illustration-batsman-playing-cricket-championship-260nw-1057445177.jpg",
  ];

  GlobalKey<_ImageSlidingState> _sliderKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: CarouselSlider.builder(
          key: _sliderKey,
          enableAutoSlider: true,
          autoSliderDelay: Duration(seconds: 5),
          unlimitedMode: true,
          slideBuilder: (index) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imagesList[index]))),
            );
          },
          slideTransform: CubeTransform(),
          slideIndicator: CircularSlideIndicator(
            itemSpacing: 20,
            padding: EdgeInsets.only(bottom: 10),
          ),
          itemCount: imagesList.length),
    );
  }
}

class ImageSlidingHome extends StatefulWidget {
  const ImageSlidingHome({Key? key}) : super(key: key);

  @override
  _ImageSlidingHomeState createState() => _ImageSlidingHomeState();
}

class _ImageSlidingHomeState extends State<ImageSlidingHome> {
  final List<String> imagesList = [
    "https://image.shutterstock.com/image-vector/illustration-batsman-bowler-playing-cricket-260nw-1931369558.jpg",
    "https://image.shutterstock.com/image-vector/illustration-batsman-bowler-playing-cricket-260nw-628449197.jpg",
    "https://image.shutterstock.com/image-photo/multi-sports-players-collage-isolated-260nw-1093671776.jpg",
    "https://image.shutterstock.com/image-vector/polygonal-geometric-professional-basketball-player-260nw-298500371.jpg",
    "https://image.shutterstock.com/image-vector/vector-concept-soccer-player-watercolor-260nw-196880318.jpg",
    "https://image.shutterstock.com/image-vector/illustration-batsman-playing-cricket-championship-260nw-1057445177.jpg",
  ];

  GlobalKey<_ImageSlidingHomeState> _sliderKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: CarouselSlider.builder(
          key: _sliderKey,
          enableAutoSlider: true,
          autoSliderDelay: Duration(seconds: 5),
          unlimitedMode: true,
          slideBuilder: (index) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imagesList[index]))),
            );
          },

          // slideTransform: SlideTransform(),
          slideIndicator: CircularSlideIndicator(
            itemSpacing: 20,
            padding: EdgeInsets.only(bottom: 10),
          ),
          itemCount: imagesList.length),
    );
  }
}
