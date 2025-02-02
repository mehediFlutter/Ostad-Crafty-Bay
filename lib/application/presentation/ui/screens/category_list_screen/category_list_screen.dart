import 'package:crafty_bay/application/presentation/state_holder/bottom_nav_controller.dart';
import 'package:crafty_bay/application/presentation/ui/widgets/home/category_card.dart';
import 'package:crafty_bay/application/state_holder_binder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (canPop, object) async {
        if (canPop) return;
        Get.find<BottomNavController>().backToHome();
      },
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Categories',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              leading: IconButton(
                onPressed: () {
                  Get.find<BottomNavController>().backToHome();
                  print(BottomNavController().currentIndex);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 8,
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return FittedBox(child: CategoryCard());
                  }),
            )),
      ),
    );
  }
}
