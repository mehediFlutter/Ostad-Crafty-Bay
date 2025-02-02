import 'package:crafty_bay/application/presentation/ui/screens/utility/app_colors.dart';
import 'package:crafty_bay/application/state_holder_binder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'presentation/ui/screens/splash_screen.dart';

class CreaftyBay extends StatelessWidget {
  const CreaftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
      initialBinding: StateHolderBinder(),
      theme: ThemeData(
        primarySwatch: MaterialColor(AppColor.primary.value, AppColor().color),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(horizontal: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: AppColor.primary),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.red),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch:
              MaterialColor(AppColor.primary.value, AppColor().color),
        ),
      ),
    );
  }
}
