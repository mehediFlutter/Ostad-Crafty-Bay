import 'package:crafty_bay/application/presentation/ui/re_usable_mother_widget.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return ReUsableMotherWidget(child: Column(
      children: [
        Text("Email Verification Screen")
      ],
    ));
  }
}