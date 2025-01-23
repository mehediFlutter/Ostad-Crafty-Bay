import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/utility/image_assets/image_assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          SvgPicture.asset(ImageAssets.craftyBayLogoNaVSVG),
          const Spacer(),
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey.shade300,
            child: const Icon(
              Icons.person,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}