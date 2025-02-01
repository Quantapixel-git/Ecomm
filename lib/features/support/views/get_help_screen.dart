import 'package:ecom/features/support/widgets/help_menu_list_tile.dart';
import 'package:flutter/material.dart';

class GetHelpScreen extends StatelessWidget {
  const GetHelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Help"),
      ),
      body: Column(
        children: [
          HelpMenuListTile(
            text: "Order tracking and delivery",
            onTap: () {},
          ),
          HelpMenuListTile(
            text: "Cancel or return an item",
            onTap: () {},
          ),
          HelpMenuListTile(
            text: "Refunds",
            onTap: () {},
          ),
          HelpMenuListTile(
            text: "Status of cashback/rewards ",
            onTap: () {},
          ),
          HelpMenuListTile(
            text: "Payment Failed",
            onTap: () {},
          ),
          HelpMenuListTile(
            text: "Feedback on seller",
            onTap: () {},
          ),
          HelpMenuListTile(
            text: "Feedback on delivery",
            onTap: () {},
          ),
          HelpMenuListTile(
            text: "Download invoice",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
