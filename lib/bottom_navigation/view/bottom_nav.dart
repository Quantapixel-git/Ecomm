import 'package:animations/animations.dart';
import 'package:ecom/bottom_navigation/providers/bottom_nav_provider.dart';
import 'package:ecom/bottom_navigation/widgets/nav_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecom/constants.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavProvider>(context);

    return Scaffold(
      // body: _pages[_currentIndex],
      body: PageTransitionSwitcher(
        duration: defaultDuration,
        transitionBuilder: (child, animation, secondAnimation) {
          return FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondAnimation,
            child: child,
          );
        },
        child: provider.pages[provider.selectedIndex],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: defaultPadding / 2),
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : const Color(0xFF101015),
        child: BottomNavigationBar(
          currentIndex: provider.selectedIndex,
          onTap: provider.updatenavIndex,
          backgroundColor: Theme.of(context).brightness == Brightness.light
              ? Colors.white
              : const Color(0xFF101015),
          type: BottomNavigationBarType.fixed,
          // selectedLabelStyle: TextStyle(color: primaryColor),
          selectedFontSize: 12,
          selectedItemColor: primaryColor,
          unselectedItemColor: blackColor,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: NavIcon(
                src: "assets/icons/Shop.svg",
              ),
              activeIcon: NavIcon(
                src: "assets/icons/Shop.svg",
                color: primaryColor,
              ),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: NavIcon(src: "assets/icons/Order.svg"),
              activeIcon: NavIcon(
                src: "assets/icons/Order.svg",
                color: primaryColor,
              ),
              label: "Order",
            ),
            BottomNavigationBarItem(
              icon: NavIcon(src: "assets/icons/Bag.svg"),
              activeIcon: NavIcon(
                src: "assets/icons/Bag.svg",
                color: primaryColor,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: NavIcon(src: "assets/icons/Profile.svg"),
              activeIcon: NavIcon(
                src: "assets/icons/Profile.svg",
                color: primaryColor,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
