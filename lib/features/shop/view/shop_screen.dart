import 'package:ecom/features/shop/widgets/shop_drawer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../components/product/product_card.dart';
import '../../../models/product_model.dart';
import '../../../route/route_name.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text('Shopping Products'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      key.currentState!.openDrawer();
                    },
                    child: Text('Filter',
                        style: TextStyle(color: Colors.grey, fontSize: 18)),
                  ),
                  Text('Sort',
                      style: TextStyle(color: Colors.grey, fontSize: 18)),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: .72,
              ),
              itemCount: demoPopularProducts.length,
              itemBuilder: (context, index) => ProductCard(
                image: demoPopularProducts.reversed.toList()[index].image,
                brandName: demoPopularProducts[index].brandName,
                title: demoPopularProducts[index].title,
                price: demoPopularProducts[index].price,
                priceAfetDiscount: demoPopularProducts[index].priceAfetDiscount,
                dicountpercent: demoPopularProducts[index].dicountpercent,
                press: () {
                  context.go(FullRouteName.productDetails);
                },
              ),
            ),
          ],
        ),
      ),
      drawer: ShopDrawer(),
    );
  }
}
