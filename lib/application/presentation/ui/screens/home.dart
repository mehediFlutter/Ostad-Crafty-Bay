import 'package:crafty_bay/application/presentation/ui/re_usable_mother_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ReUsableMotherWidget(
        child: Column(
      children: [],
    ));
  }
}
