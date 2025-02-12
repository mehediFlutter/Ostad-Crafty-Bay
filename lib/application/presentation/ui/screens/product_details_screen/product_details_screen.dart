import 'package:flutter/material.dart';
import 'product_image_slider.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       
        body: Column(
          children: [
            Stack(
              children: [
                ProductImageSlider(),
                AppBar(
                  backgroundColor: Colors.transparent,
                  leading: BackButton(
                    color: Colors.black45,
                  ),
                  title:Text( "Product Details",style: TextStyle(
                    color: Colors.black45
                  ),)
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
