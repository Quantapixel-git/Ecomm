import 'package:ecom/constants.dart';
import 'package:ecom/features/orders/widgets/order_card.dart';
import 'package:flutter/material.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (context, index) {
        return Divider(
          color: greyColor20,
        );
      },
      itemBuilder: (context, index) {
        return OrderCard();
      },
    );
  }
}
