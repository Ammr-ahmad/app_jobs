import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerDesignSetting extends StatelessWidget {
  const DrawerDesignSetting({
    Key? key,
    required this.title,
    required this.icon,
    this.onTap,
    this.trailing,
  }) : super(key: key);
  final String title;
  final SvgPicture icon;
  final void Function()? onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: icon,
      onTap: onTap,
      trailing: trailing,
    );
  }
}
