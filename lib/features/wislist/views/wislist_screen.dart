import 'package:ecom/components/product/product_card.dart';
import 'package:ecom/features/wislist/widgets/wish_list_card.dart';
import 'package:ecom/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class WislistScreen extends StatelessWidget {
  const WislistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WishList"),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisExtent: 300,
          mainAxisSpacing: 16.0,
        ),
        itemCount: demoPopularProducts.length,
        itemBuilder: (context, index) {
          final product = demoPopularProducts[index];

          return WishListCard(
            image: product.image,
            brandName: product.brandName,
            title: product.title,
            price: product.price,
            press: () {},
          );
        },
      ),
    );
  }
}
