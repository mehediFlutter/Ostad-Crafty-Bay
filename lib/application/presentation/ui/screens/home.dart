import 'package:crafty_bay/presentation/state_holders/ui/screens/utility/image_assets/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            SvgPicture.asset(ImageAssets.craftyBayLogoNaVSVG),
           const Spacer(),
           CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey.shade300,
            child: const Icon(Icons.person, color: Colors.grey,),
           )
          ],
        ),
      ),
    );
  }
}