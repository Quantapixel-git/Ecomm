import 'dart:math';

import 'package:ecom/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = [primaryColor, successColor, Colors.redAccent];

    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: ListView.separated(
        itemCount: 20,
        separatorBuilder: (context, index) {
          return Divider(
            color: greyColor20,
          );
        },
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundColor: colors[Random().nextInt(colors.length)],
              radius: 30,
              child: SvgPicture.asset(
                "assets/icons/Notification.svg",
                color: Colors.white,
              ),
            ),
            title: Text("Notification"),
            subtitle: Text(
                "Here you can put some description about the notification"),
          );
        },
      ),
    );
  }
}
