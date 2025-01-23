import 'package:crafty_bay/application/presentation/ui/screens/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'presentation/ui/screens/splash_screen.dart';

class CreaftyBay extends StatelessWidget {
  const CreaftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      theme: ThemeData(
        primarySwatch: MaterialColor(AppColor.primary.value, AppColor().color),
        primaryColor: AppColor.primary,
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: Color(0xFF07ADAE)),
      ),
      home: SplashScreen(),
  
    );
  }
}
