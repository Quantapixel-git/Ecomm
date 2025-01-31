import 'package:flutter/material.dart';

import '../../../constants.dart';

class FollowOnInstagramWidget extends StatelessWidget {
  const FollowOnInstagramWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final images = [
      "https://quantapixel.in/electon1/img/insta/insta-1.jpg",
      "https://quantapixel.in/electon1/img/insta/insta-2.jpg",
      "https://quantapixel.in/electon1/img/insta/insta-3.jpg",
      "https://quantapixel.in/electon1/img/insta/insta-4.jpg",
      "https://quantapixel.in/electon1/img/insta/insta-5.jpg",
      "https://quantapixel.in/electon1/img/insta/insta-6.jpg",
    ];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(
            "Follow on Instagram",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        // While loading use 👇
        // const ProductsSkelton(),
        SizedBox(
          height: 20.0,
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            // Find demoPopularProducts on models/ProductModel.dart
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                width: 250,
                height: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                      image: NetworkImage(images[index]),
                      fit: BoxFit.cover,
                    )),
              );
            },
          ),
        )
      ],
    );
  }
}
