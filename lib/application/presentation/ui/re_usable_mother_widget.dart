import 'package:flutter/material.dart';

class ReUsableMotherWidget extends StatelessWidget {
  final Widget child;
  const ReUsableMotherWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: child));
  }
}
