import 'package:ecom/constants.dart';
import 'package:ecom/features/checkout/widgets/cart_card.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Review your order",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CartCard();
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: greyColor20,
                );
              },
              itemCount: 2,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              decoration: BoxDecoration(
                border: Border.all(color: greyColor20),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Order Summary",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Subtotal",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: blackColor,
                                    ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Rs 1499",
                            textAlign: TextAlign.end,
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Shipping Fee",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: blackColor,
                                    ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Free",
                            textAlign: TextAlign.end,
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: successColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Divider(
                    color: greyColor20,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Total (Includes of GST)",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: blackColor,
                                    ),
                          ),
                        ),
                        Text(
                          "Rs 1600",
                          textAlign: TextAlign.end,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: blackColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "GST Charges",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: blackColor,
                                    ),
                          ),
                        ),
                        Expanded(
                            child: Text(
                          "Rs 101",
                          textAlign: TextAlign.end,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: blackColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Checkout"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
