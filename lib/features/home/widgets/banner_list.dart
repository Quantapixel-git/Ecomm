import 'package:flutter/material.dart';

class BannerList extends StatelessWidget {
  const BannerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      child: CarouselView.weighted(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        itemSnapping: true,
        flexWeights: [1],
        children: [
          OfferBanner(
              discount: 60,
              label: 'Head Phones',
              imgSrc: "assets/images/banner1.jpg"),
          OfferBanner(
              discount: 23,
              label: 'Ear Phones',
              imgSrc: "assets/images/banner2.jpg"),
          OfferBanner(
              discount: 18,
              label: 'Smart Watch',
              imgSrc: "assets/images/banner3.jpg"),
        ],
      ),
    );
  }
}

class OfferBanner extends StatelessWidget {
  final double discount;
  final String label;
  final String imgSrc;
  const OfferBanner(
      {super.key,
      required this.discount,
      required this.label,
      required this.imgSrc});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        ColorFiltered(
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(.2), BlendMode.darken),
          child: Image.asset(
            imgSrc,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 30,
          right: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.yellow, width: 1)),
                child: Text.rich(
                  TextSpan(
                    text: discount.toStringAsFixed(0),
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: "% Off",
                        style: TextStyle(
                            fontSize: 14, color: Colors.yellow.shade200),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 120,
                child: Text(
                  textAlign: TextAlign.start,
                  label,
                  style: TextStyle(
                      height: 1,
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(8)),
                width: 100,
                padding: EdgeInsets.all(10),
                child: Text(
                  textAlign: TextAlign.center,
                  "Shop \nNow",
                  style: TextStyle(
                      height: 1,
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
