import 'package:crafty_bay/application/presentation/const.dart';
import 'package:crafty_bay/application/presentation/ui/re_usable_mother_widget.dart';
import 'package:crafty_bay/application/presentation/ui/screens/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utility/image_assets/image_assets.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return ReUsableMotherWidget(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              ImageAssets.craftyBayLogoSVG,
              width: 100,
            ),
            Text("Enter your OTP",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold)),
            Text(
              "A 4 Digit OTP Code has been sent",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: Colors.grey),
            ),
            height16,
            PinCodeTextField(
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 50,
                activeFillColor: Colors.white,
                inactiveFillColor: Colors.white,
                selectedFillColor: Colors.white,
                activeColor: AppColor.primaryColor,
                inactiveColor: AppColor.primaryColor,
                selectedColor: Colors.green
              ),
              animationDuration: Duration(milliseconds: 300),
            //  backgroundColor: Colors.blue.shade50,
              enableActiveFill: true,
              onCompleted: (v) {
                print("Completed");
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              },
              appContext: context,
            ),
            height16,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Next",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.grey),
                    text: 'This code will expire in '),
                TextSpan(
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w600),
                    text: '120s'),
              ]),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(foregroundColor: Colors.grey),
              child: Text("Resend"),
            )
          ],
        ),
      ),
    ));
  }
}
