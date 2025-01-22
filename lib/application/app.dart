import 'package:crafty_bay/presentation/state_holders/ui/screens/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Drop_down/drop_down.dart';

class CreaftyBay extends StatelessWidget {
  const CreaftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home:  DropDown(),
      theme: ThemeData(
        primarySwatch: MaterialColor(AppColor.primary.value, AppColor().color),
        primaryColor: AppColor.primary,
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: Color(0xFF07ADAE)),
      ),
  
    );
  }
}
