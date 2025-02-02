import 'package:crafty_bay/application/presentation/state_holder/bottom_nav_controller.dart';
import 'package:crafty_bay/application/presentation/ui/screens/auth/home.dart';
import 'package:crafty_bay/application/presentation/ui/screens/auth/wish_list_screen/wish_list_screen.dart';
import 'package:crafty_bay/application/presentation/ui/screens/category_list_screen/category_list_screen.dart';
import 'package:crafty_bay/application/presentation/ui/screens/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBaseScreen extends StatefulWidget {
  const BottomNavBaseScreen({super.key});

  @override
  State<BottomNavBaseScreen> createState() => _BottomNavBaseScreenState();
}

class _BottomNavBaseScreenState extends State<BottomNavBaseScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const CategoryListScreen(),
    const HomeScreen(),
    const WishListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GetBuilder<BottomNavController>(
          builder: (controller) {
            return Scaffold(
                  body: _screens[controller.currentIndex],
            
                  bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentIndex,
            onTap: controller.changeIndex,
            selectedItemColor: AppColor.primaryColor,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            elevation: 4,
            
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: 'Categories'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: 'Wishlist'),
             
            ],
                  ),
                );
          }
        ));
  }
}
