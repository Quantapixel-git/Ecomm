import 'package:flutter/material.dart';
import 'package:ecom/components/product/product_card.dart';
import 'package:ecom/models/product_model.dart';

import '../../../constants.dart';

class BestSellers extends StatelessWidget {
  const BestSellers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(
            "Weekly Bestseller",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        SizedBox(
          height: defaultPadding,
        ),
        // While loading use 👇
        // const ProductsSkelton(),
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            // Find demoBestSellersProducts on models/ProductModel.dart
            itemCount: demoBestSellersProducts.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                left: defaultPadding,
                right: index == demoBestSellersProducts.length - 1
                    ? defaultPadding
                    : 0,
              ),
              child: ProductCard(
                image: demoBestSellersProducts[index].image,
                brandName: demoBestSellersProducts[index].brandName,
                title: demoBestSellersProducts[index].title,
                price: demoBestSellersProducts[index].price,
                priceAfetDiscount:
                    demoBestSellersProducts[index].priceAfetDiscount,
                dicountpercent: demoBestSellersProducts[index].dicountpercent,
                press: () {
                  // Navigator.pushNamed(context, productDetailsScreenRoute,
                  //     arguments: index.isEven);
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
