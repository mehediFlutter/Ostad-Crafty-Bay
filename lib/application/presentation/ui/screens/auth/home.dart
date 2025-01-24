import 'package:carousel_slider/carousel_slider.dart';
import 'package:crafty_bay/application/presentation/const.dart';
import 'package:crafty_bay/application/presentation/ui/screens/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/circular_icon_button.dart';
import '../../widgets/home/home_slider.dart';
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    hintText: 'Search',
                    hintStyle: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.grey),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
                HomeSlider()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


