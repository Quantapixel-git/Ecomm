import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavIcon extends StatelessWidget {
  final String src;
  final Color? color;

  const NavIcon({
    super.key,
    required this.src,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      src,
      height: 24,
      colorFilter: ColorFilter.mode(
        color ??
            Theme.of(context).iconTheme.color!.withOpacity(
                  Theme.of(context).brightness == Brightness.dark ? 0.3 : 1,
                ),
        BlendMode.srcIn,
      ),
    );
  }
}
