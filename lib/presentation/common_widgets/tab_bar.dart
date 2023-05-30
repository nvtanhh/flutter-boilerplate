import 'package:flutter/material.dart';

import '../resource/resource.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({
    required this.tabs,
    super.key,
    this.controller,
  });

  final List<Widget> tabs;
  final TabController? controller;

  @override
  Size get preferredSize => const Size.fromHeight(Sizes.s48);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Transform.translate(
        offset: const Offset(0, 1),
        child: TabBar(
          controller: controller,
          tabs: tabs,
          indicator: const BoxDecoration(
            border: Border(bottom: BorderSide(color: AppColorsConstants.blue, width: 2.0)),
          ),
        ),
      ),
    );
  }
}
