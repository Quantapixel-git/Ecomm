import 'package:ecom/bottom_navigation/widgets/nav_icon.dart';
import 'package:ecom/features/home/widgets/drawer_tile.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // DrawerHeader(
          //   child: UserAccountsDrawerHeader(
          //     decoration: BoxDecoration(),
          //     accountName: Text('Pratham'),
          //     accountEmail: Text('Prathambhatnagar313@gmail.com'),
          //   ),
          // ),
          SizedBox(height: 100),
          // DrawerTile(
          //   title: 'Home',
          //   icon: Icons.home_filled,
          // ),
          DrawerTile(
            title: 'Orders',
            icon: Icons.shopping_bag_outlined,
          ),
          DrawerTile(
            title: 'My WishList',
            icon: Icons.favorite_border_rounded,
          ),
          DrawerTile(
            title: 'My Cart',
            icon: Icons.shopping_cart_outlined,
          ),
          DrawerTile(
            title: 'Blogs',
            icon: Icons.message_outlined,
          ),
          DrawerTile(title: 'Contact Us', icon: Icons.headset_mic_rounded),
          DrawerTile(
            title: 'Buy Electron',
            icon: Icons.shop_outlined,
          )
        ],
      ),
    );
  }
}
