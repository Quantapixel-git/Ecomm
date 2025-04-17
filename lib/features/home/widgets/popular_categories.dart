import 'dart:async';

import 'package:flutter/material.dart';

import '../../../constants.dart';

class PopularCategories extends StatefulWidget {
  const PopularCategories({super.key});

  @override
  State<PopularCategories> createState() => _PopularCategoriesState();
}

class _PopularCategoriesState extends State<PopularCategories> {
  final ScrollController _scrollController = ScrollController();
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    int count = 0;
    int flipValue = 1;
    _timer = Timer.periodic(Duration(seconds: 3), (_) {
      if (count >= 4) {
        flipValue *= -1;
        count = 0;
      }

      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.offset + (120 * flipValue),
          duration: Duration(milliseconds: 400),
          curve: Curves.easeOut,
        );
      }
      count++;
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: Container(
        height: 130,
        color: Colors.grey.shade100,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.only(left: 10),
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular Categories',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(),
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'View All',
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                controller: _scrollController,
                padding: EdgeInsets.symmetric(vertical: 10),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryTile(
                      imgSrc:
                          'https://quantapixel.in/electon1/img/cat/home-1-cate1.jpg',
                      label: 'Wireless earbuds'),
                  CategoryTile(
                      imgSrc:
                          'https://quantapixel.in/electon1/img/cat/home-1-cate2.jpg',
                      label: 'Speakers'),
                  CategoryTile(
                      imgSrc:
                          'https://quantapixel.in/electon1/img/cat/home-1-cate3.jpg',
                      label: 'Air conditioner'),
                  CategoryTile(
                      imgSrc:
                          'https://quantapixel.in/electon1/img/cat/home-1-cate4.jpg',
                      label: 'EV Charger'),
                  CategoryTile(
                      imgSrc:
                          'https://quantapixel.in/electon1/img/cat/home-1-cate5.jpg',
                      label: 'DVD Player'),
                  CategoryTile(
                      imgSrc:
                          'https://quantapixel.in/electon1/img/cat/home-1-cate6.jpg',
                      label: 'Camera')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget CategoryTile({required String imgSrc, required String label}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
            backgroundColor: whiteColor,
            radius: 45,
            child: ClipOval(
                child: Image.network(imgSrc,
                    width: 100, height: 100, fit: BoxFit.contain))),
        Text(label)
      ],
    ),
  );
}
