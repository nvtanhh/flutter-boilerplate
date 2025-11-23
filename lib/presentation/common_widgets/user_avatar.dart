import 'package:flutter/material.dart';

import '../resource/all.dart';
import 'network_image.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    required this.url,
    super.key,
    this.size = Sizes.s40,
  });

  final String url;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      backgroundImage: AppCachedNetworkImageProvider(url),
    );
  }
}
