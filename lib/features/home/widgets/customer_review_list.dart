import 'package:ecom/constants.dart';
import 'package:ecom/features/home/widgets/customer_review_card.dart';
import 'package:flutter/material.dart';

class CustomerReviewList extends StatelessWidget {
  const CustomerReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Customer Reviews",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          // While loading use 👇
          // const CategoriesSkelton(),
          SizedBox(
            height: 365,
            child: PageView(
              scrollDirection: Axis.horizontal,
              // backgroundColor: whiteColor,
              // flexWeights: [1],
              children: [
                CustomerReviewCard(),
                CustomerReviewCard(),
                CustomerReviewCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
