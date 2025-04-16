import 'package:flutter/material.dart';

class BannerList extends StatelessWidget {
  const BannerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16.0),
      child: CarouselView.weighted(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        itemSnapping: true,
        flexWeights: [1],
        children: [
          Image.asset(
            "assets/images/banner.jpg",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/banner.jpg",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/banner.jpg",
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
