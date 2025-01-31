import 'package:ecom/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: NetworkImage(
                  "https://www.snitch.co.in/cdn/shop/files/4mst2343-02-m-16.jpg?v=1738065369&width=1080",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "T-Shirt",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: darkGreyColor),
                ),
                Text(
                  "Men's Regular Fit T-Shirt",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Rs 500",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        border: Border.all(
                          color: greyColor40,
                        ),
                      ),
                      child: SvgPicture.asset("assets/icons/add.svg"),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "1",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        border: Border.all(
                          color: greyColor40,
                        ),
                      ),
                      child: SvgPicture.asset("assets/icons/remove.svg"),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
        ],
      ),
    );
  }
}
