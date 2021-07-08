import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BannerSection(),
      ],
    );
  }
}

class BannerSection extends StatefulWidget {
  @override
  _BannerSectionState createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  final List<String> _imgList = [
    'images/shop1.jpeg',
    'images/shop2.jpeg',
    'images/shop3.jpeg',
    'images/shop4.jpeg',
    'images/shop5.jpeg',
  ];

  int _current;

  @override
  void initState() {
    _current = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          buildBanner(),
        ],
      ),
    );
  }

  Widget buildBanner() {
    return Container(
      width: double.infinity,
      child: CarouselSlider(
        options: CarouselOptions(
            aspectRatio: 2,
            viewportFraction: 1.0,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
        items: _imgList
            .map((item) => Image.asset(
                  item,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ))
            .toList(),
      ),
    );
  }
}
