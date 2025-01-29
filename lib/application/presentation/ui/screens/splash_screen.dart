import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../const.dart';
import 'auth/home.dart';
import 'bottom_nav_base_screen.dart';
import 'utility/image_assets/image_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }

  void goToNextScreen() {
    Future.delayed(const Duration(seconds: 1)).then((value) {
      Get.offAll(BottomNavBaseScreen());
      //HomeScreen
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
                child: SvgPicture.asset(
              ImageAssets.craftyBayLogoSVG,
              width: 100,
            )),
            const Spacer(),
            const CircularProgressIndicator(),
            height16,
            const Text("Virsion 1.0."),
            height16,
          ],
        ),
      ),
    );
  }
}
