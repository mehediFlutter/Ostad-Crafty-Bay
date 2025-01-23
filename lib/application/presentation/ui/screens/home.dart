import 'package:crafty_bay/application/presentation/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/custom_app_bar.dart';
import 'utility/image_assets/image_assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: SvgPicture.asset(ImageAssets.craftyBayLogoSVG)),
           Spacer(),
            CircularProgressIndicator(),
            height16,
            Text("Version:1.0.0"),
            height16,
          ],
        ),
      ),
    );
  }
}


