import 'package:flutter/material.dart';
import 'package:ecom/constants.dart';
import 'package:ecom/models/category_model.dart';
import 'package:ecom/features/search/widgets/search_form.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'components/expansion_category.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: context.pop,
                    child: SvgPicture.asset(
                      "assets/icons/Arrow - Left.svg",
                      height: 24,
                      colorFilter: ColorFilter.mode(
                          Theme.of(context).textTheme.bodyLarge!.color!,
                          BlendMode.srcIn),
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Expanded(child: SearchForm()),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding / 2),
              child: Text(
                "Categories",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            // While loading use 👇
            // const Expanded(
            //   child: DiscoverCategoriesSkelton(),
            // ),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: demoCategories.length,
            //     itemBuilder: (context, index) => ExpansionCategory(
            //       svgSrc: demoCategories[index].svgSrc!,
            //       title: demoCategories[index].title,
            //       subCategory: demoCategories[index].subCategories!,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
