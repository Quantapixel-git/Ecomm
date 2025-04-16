import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../components/product/product_card.dart';
import '../../../models/product_model.dart';
import '../../../route/route_name.dart';

class TrendingScreen extends StatefulWidget {
  const TrendingScreen({super.key});

  @override
  State<TrendingScreen> createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trending Products'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: .72),
          itemCount: demoPopularProducts.length,
          itemBuilder: (context, index) => ProductCard(
            image: demoPopularProducts[index].image,
            brandName: demoPopularProducts[index].brandName,
            title: demoPopularProducts[index].title,
            price: demoPopularProducts[index].price,
            priceAfetDiscount: demoPopularProducts[index].priceAfetDiscount,
            dicountpercent: demoPopularProducts[index].dicountpercent,
            press: () {
              context.go(
                FullRouteName.productDetails,
              );
            },
          ),
        ),
      ),
    );
  }
}
