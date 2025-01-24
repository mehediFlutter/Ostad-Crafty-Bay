import 'package:crafty_bay/application/presentation/const.dart';
import 'package:crafty_bay/application/presentation/ui/re_usable_mother_widget.dart';
import 'package:crafty_bay/application/presentation/ui/screens/auth/otp_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../utility/image_assets/image_assets.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return ReUsableMotherWidget(
        child: SizedBox(
      width: double.infinity,
      child: 
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                ImageAssets.craftyBayLogoSVG,
                width: 100,
              ),
              Text("Complete Profile",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold)),
              Text(
                "Get started with us by share your details",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: Colors.grey),
              ),
              height16,
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'First Name',
                   hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.grey)
                ),
              ),
              height12,
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Last Name',
                  hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.grey)
                ),
              ),
              height12,
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Mobile',
                   hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.grey)
                ),
              ),
              height12,
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'City',
                   hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.grey)
                ),
              ),
              height12,
              TextFormField(
                
                maxLines: 6,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  hintText: 'Shopping Address',
                   hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.grey)
                ),
              ),
         
           
              height12,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(OTPScreen());
                  },
                  child: Text(
                    "complete",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
