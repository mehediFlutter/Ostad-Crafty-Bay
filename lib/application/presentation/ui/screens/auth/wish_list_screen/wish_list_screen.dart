import 'package:crafty_bay/application/presentation/ui/widgets/home/category_card.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:  Text('Wishlist',style: Theme.of(context).textTheme.titleLarge,),
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
