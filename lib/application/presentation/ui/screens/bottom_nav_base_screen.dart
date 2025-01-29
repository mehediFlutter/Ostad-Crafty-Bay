import 'package:crafty_bay/application/presentation/ui/screens/auth/home.dart';
import 'package:crafty_bay/application/presentation/ui/screens/category_list_screen/category_list_screen.dart';
import 'package:crafty_bay/application/presentation/ui/screens/utility/app_colors.dart';
import 'package:flutter/material.dart';

class BottomNavBaseScreen extends StatefulWidget {
  const BottomNavBaseScreen({super.key});

  @override
  State<BottomNavBaseScreen> createState() => _BottomNavBaseScreenState();
}

class _BottomNavBaseScreenState extends State<BottomNavBaseScreen> {
  int _currentIndex = 0;
  List<Widget> _screens = [
    const HomeScreen(),
    const CategoryListScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          _currentIndex = index;
          if (mounted) {
            setState(() {});
          }
        },
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
    ));
  }
}
