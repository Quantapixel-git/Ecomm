import 'package:ecom/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomerReviewCard extends StatelessWidget {
  const CustomerReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: greyColor10,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 85,
              height: 85,
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5.0,
                  ),
                ],
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            RatingBar.builder(
              initialRating: 3,
              itemSize: 20,
              itemPadding: const EdgeInsets.only(right: defaultPadding / 4),
              unratedColor: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .color!
                  .withOpacity(0.08),
              glow: false,
              allowHalfRating: true,
              ignoreGestures: true,
              onRatingUpdate: (value) {},
              itemBuilder: (context, index) => Icon(
                Icons.star,
                color: primaryColor,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
                  style: Theme.of(context).textTheme.bodyLarge,
                ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.reviews_outlined,
                ),
                SizedBox(
                  width: 16.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sonam Gupta",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      "Store customer",
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
