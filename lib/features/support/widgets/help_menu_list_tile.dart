import 'package:flutter/material.dart';
import 'package:ecom/components/list_tile/divider_list_tile.dart';

class HelpMenuListTile extends StatelessWidget {
  const HelpMenuListTile({
    super.key,
    required this.text,
    required this.onTap,
    this.isShowDivider = true,
  });

  final String text;
  final VoidCallback onTap;
  final bool isShowDivider;

  @override
  Widget build(BuildContext context) {
    return DividerListTile(
      minLeadingWidth: 24,
      title: Text(
        text,
        style: const TextStyle(fontSize: 14, height: 1),
      ),
      press: onTap,
      isShowDivider: isShowDivider,
    );
  }
}
