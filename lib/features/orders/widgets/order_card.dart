import 'package:ecom/constants.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

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
                  height: 10.0,
                ),
                Text(
                  "Arriving at 5 Feb 2025",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: successColor,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
