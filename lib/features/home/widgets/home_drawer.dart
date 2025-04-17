import 'package:ecom/bottom_navigation/widgets/nav_icon.dart';
import 'package:ecom/features/blogs/views/blogs_screen.dart';
import 'package:ecom/features/checkout/views/cart_screen.dart';
import 'package:ecom/features/home/widgets/drawer_tile.dart';
import 'package:ecom/features/orders/views/order_screen.dart';
import 'package:ecom/features/shop/view/shop_screen.dart';
import 'package:ecom/features/support/views/get_help_screen.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(height: 100),
          DrawerTile(
            title: 'Shop',
            icon: Icons.home_filled,
            route: ShopScreen(),
          ),
          DrawerTile(
            title: 'Orders',
            icon: Icons.shopping_bag_outlined,
            route: OrderScreen(),
          ),
          DrawerTile(
            title: 'My WishList',
            icon: Icons.favorite_border_rounded,
            route: CartScreen(),
          ),
          DrawerTile(
            title: 'My Cart',
            icon: Icons.shopping_cart_outlined,
            route: CartScreen(),
          ),
          DrawerTile(
            title: 'Blogs',
            icon: Icons.message_outlined,
            route: BlogScreen(),
          ),
          DrawerTile(
            title: 'Contact Us',
            icon: Icons.headset_mic_rounded,
            route: GetHelpScreen(),
          ),
        ],
      ),
    );
  }
}
