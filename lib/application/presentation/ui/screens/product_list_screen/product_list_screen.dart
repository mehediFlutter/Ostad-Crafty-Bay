import 'package:crafty_bay/application/presentation/ui/widgets/home/product_card.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
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
            crossAxisCount: 3), itemBuilder: (context, index){
              return FittedBox(
                
                child: ProductCard());
            }),
        )
      ),
    );
  }
}
