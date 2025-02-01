import 'package:ecom/constants.dart';
import 'package:ecom/features/checkout/widgets/checkout_product_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              margin: EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: greyColor40),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Home",
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "Noida, New Delhi",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text("Change"),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              // padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: greyColor40,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    "Your  Products",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: greyColor40,
                      );
                    },
                    itemBuilder: (context, index) {
                      return CheckoutProductListTile();
                    },
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              decoration: BoxDecoration(
                border: Border.all(color: greyColor40),
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
            SizedBox(
              height: 20,
            ),
            Text(
              "Payment Method ",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: 16.0,
            ),
            RadioListTile(
              title: Text("Cash on Delivery"),
              value: "cod",
              groupValue: ["cod", 'debit card', 'upi'],
              onChanged: (value) {},
            ),
            RadioListTile(
              title: Text("Debit Card"),
              value: "debit card",
              groupValue: ["cod", 'debit card', 'upi'],
              onChanged: (value) {},
            ),
            RadioListTile(
              title: Text("UPI"),
              value: "upi",
              groupValue: ["cod", 'debit card', 'upi'],
              onChanged: (value) {},
            ),
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Complete your Order",
                  )),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
