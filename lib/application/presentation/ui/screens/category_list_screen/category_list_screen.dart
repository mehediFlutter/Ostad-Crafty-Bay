import 'package:crafty_bay/application/presentation/ui/widgets/home/category_card.dart';
import 'package:flutter/material.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:  Text('Categories',style: Theme.of(context).textTheme.titleLarge,),
        leading: BackButton(
          color: Colors.black ,
        ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 16,
            mainAxisSpacing: 8,
            crossAxisCount: 4), itemBuilder: (context, index){
              return FittedBox(
                
                child: CategoryCard());
            }),
        )
      ),
    );
  }
}
