import 'package:ecom/features/home/widgets/banner_list.dart';
import 'package:ecom/features/home/widgets/customer_review_list.dart';
import 'package:ecom/features/home/widgets/follow_on_instagram_widget.dart';
import 'package:ecom/features/home/widgets/home_drawer.dart';
import 'package:ecom/route/screen_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../widgets/app_highlights.dart';
import '../widgets/best_sellers.dart';
import '../widgets/flash_sale.dart';
import '../widgets/offer_carousel_and_categories.dart';
import '../widgets/popular_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo/logo.png',
          height: 30,
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.go(FullRouteName.discover);
            },
            icon: SvgPicture.asset(
              "assets/icons/Search.svg",
              height: 24,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).textTheme.bodyLarge!.color!,
                  BlendMode.srcIn),
            ),
          ),
          IconButton(
            onPressed: () {
              context.go(FullRouteName.notifications);
            },
            icon: SvgPicture.asset(
              "assets/icons/Notification.svg",
              height: 24,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).textTheme.bodyLarge!.color!,
                  BlendMode.srcIn),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          OffersCarouselAndCategories(),
          BannerList(),
          AppHighlights(),
          PopularProducts(),
          // FlashSale(),
          CustomerReviewList(),
          BestSellers(),
          SizedBox(
            height: 20.0,
          ),
          FollowOnInstagramWidget(),
        ],
      ),
      drawer: HomeDrawer(),
    );
  }
}
