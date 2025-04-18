import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AppHighlights extends StatelessWidget {
  const AppHighlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              "App's Features & Highlight ",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                HighLightTile(
                  title: 'WorldWide Shopping',
                  subTitle: 'the Generated is there was!',
                  imageSrc:
                      'https://quantapixel.in/electon1/img/service/home-ser1.png',
                ),
                HighLightTile(
                  title: 'Secure Payment',
                  subTitle: 'the Generated is there was!',
                  imageSrc:
                      'https://quantapixel.in/electon1/img/service/home-ser2.png',
                ),
                HighLightTile(
                  title: 'Return method',
                  subTitle: 'the Generated is there was!',
                  imageSrc:
                      'https://quantapixel.in/electon1/img/service/home-ser3.png',
                ),
                HighLightTile(
                  title: 'Best Gift Voucher',
                  subTitle: 'the Generated is there was!',
                  imageSrc:
                      'https://quantapixel.in/electon1/img/service/home-ser4.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HighLightTile extends StatelessWidget {
  final title;
  final subTitle;
  final imageSrc;

  const HighLightTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageSrc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: 130,
        padding: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.shade200, width: 2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageSrc,
              height: 35,
            ),
            SizedBox(height: 5),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 5),
            Text(
              subTitle,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AppHighlights extends StatelessWidget {
  const AppHighlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              "App's Features & Highlight ",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                HighLightTile(
                  title: 'WorldWide Shopping',
                  // subTitle: 'the Generated is there was!',
                  imageSrc:
                      'https://quantapixel.in/electon1/img/service/home-ser1.png',
                ),
                HighLightTile(
                  title: 'Secure Payment',
                  // subTitle: 'the Generated is there was!',
                  imageSrc:
                      'https://quantapixel.in/electon1/img/service/home-ser2.png',
                ),
                HighLightTile(
                  title: 'Return method',
                  // subTitle: 'the Generated is there was!',
                  imageSrc:
                      'https://quantapixel.in/electon1/img/service/home-ser3.png',
                ),
                HighLightTile(
                  title: 'Best Gift Voucher',
                  // subTitle: 'the Generated is there was!',
                  imageSrc:
                      'https://quantapixel.in/electon1/img/service/home-ser4.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HighLightTile extends StatelessWidget {
  final title;
  // final subTitle;
  final imageSrc;

  const HighLightTile({
    super.key,
    required this.title,
    // required this.subTitle,
    required this.imageSrc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: 130,
        padding: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          // color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(15),
          // border: Border.all(color: Colors.grey.shade200, width: 2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageSrc,
              height: 30,
            ),
            SizedBox(height: 5),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w600),
            ),
            // SizedBox(height: 5),
            // Text(
            //   subTitle,
            //   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            //   textAlign: TextAlign.center,
            // ),
          ],
        ),
      ),
    );
  }
}

 */
