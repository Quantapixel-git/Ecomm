import 'package:ecom/bottom_navigation/widgets/nav_icon.dart';
import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerTile({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 24,
      ),
      title: Text(
        title.toUpperCase(),
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      ),
    );
  }
}
//D5DE4491-299C42A0-8A6D29B3-0EA76406
