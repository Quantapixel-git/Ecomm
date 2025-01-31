import 'package:ecom/features/home/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

List<CategoryModel> demoCategories = [
  CategoryModel(
    name: "All Categories",
    svgSrc: "assets/icons/Child.svg",
  ),
  CategoryModel(
    name: "On Sale",
    svgSrc: "assets/icons/Sale.svg",
  ),
  CategoryModel(name: "Man's", svgSrc: "assets/icons/Man.svg"),
  CategoryModel(name: "Woman’s", svgSrc: "assets/icons/Woman.svg"),
  CategoryModel(
    name: "Kids",
    svgSrc: "assets/icons/Child.svg",
  ),
];
// End For Preview

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Container(
        color: greyColor10,
        child: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          scrollDirection: Axis.horizontal,
          itemCount: demoCategories.length,
          itemBuilder: (context, index) {
            final category = demoCategories[index];

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundColor: whiteColor,
                    radius: 35,
                    child: SvgPicture.asset(
                      category.svgSrc,
                      width: 30,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    category.name,
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class CategoryBtn extends StatelessWidget {
  const CategoryBtn({
    super.key,
    required this.category,
    this.svgSrc,
    required this.isActive,
    required this.press,
  });

  final String category;
  final String? svgSrc;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      child: Container(
        height: 36,
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        decoration: BoxDecoration(
          color: isActive ? primaryColor : Colors.transparent,
          border: Border.all(
              color: isActive
                  ? Colors.transparent
                  : Theme.of(context).dividerColor),
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Row(
          children: [
            if (svgSrc != null)
              SvgPicture.asset(
                svgSrc!,
                height: 20,
                colorFilter: ColorFilter.mode(
                  isActive ? Colors.white : Theme.of(context).iconTheme.color!,
                  BlendMode.srcIn,
                ),
              ),
            if (svgSrc != null) const SizedBox(width: defaultPadding / 2),
            Text(
              category,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: isActive
                    ? Colors.white
                    : Theme.of(context).textTheme.bodyLarge!.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
