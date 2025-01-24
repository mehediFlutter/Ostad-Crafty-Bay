import 'package:crafty_bay/application/presentation/const.dart';
import 'package:crafty_bay/application/presentation/ui/re_usable_mother_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utility/image_assets/image_assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Row(
            children: [
              SvgPicture.asset(ImageAssets.craftyBayLogoNaVSVG),
              const Spacer(),
              CircularIconButton(
                icon: Icons.person,
                onTap: () {},
              ),
              width8,
              CircularIconButton(
                icon: Icons.call,
                onTap: () {},
              ),
               width8,
              CircularIconButton(
                icon: Icons.notifications_none,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircularIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const CircularIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: CircleAvatar(
        radius: 16,
        backgroundColor: Colors.grey.shade300,
        child: Icon(
          icon,
          color: Colors.grey,
          size: 20,
        ),
      ),
    );
  }
}
