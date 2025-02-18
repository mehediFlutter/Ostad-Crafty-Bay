import 'dart:collection';

import 'package:crafty_bay/application/presentation/const.dart';
import 'package:crafty_bay/application/presentation/ui/widgets/custom_stepper.dart';
import 'package:flutter/material.dart';
import '../utility/app_colors.dart';
import 'product_image_slider.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List<Color> colors = [
    Colors.deepOrange,
    Colors.amber,
    Colors.green,
    Colors.yellow,
    Colors.blue,
  ];
  List<String> sizes = ["S", "M", "L", "XL", "XXL"];
  int selectedColorIndex = 0;
  int selectedSizeIndex = 0;
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
                    title: Text(
                      "Product Details",
                      style: TextStyle(color: Colors.black45),
                    ))
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Adidas Shoe HK235548 - Black Edition",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                          CustomStepper(
                              lowerLimit: 1,
                              upperLimit: 10,
                              value: 1,
                              onChanged: (newValue) {
                                print(newValue);
                              })
                        ],
                      ),
                      Row(
                        children: [
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 18,
                              ),
                              Text(
                                "4.2",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 12,
                                    color: Colors.blueGrey),
                              ),
                            ],
                          ),
                          TextButton(
                            child: Text(
                              "Review",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColor.primary,
                              ),
                            ),
                            onPressed: () {},
                          ),
                          Card(
                            color: AppColor.primary,
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: Icon(
                                Icons.favorite_outline,
                                size: 12,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Color",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      height16,
                      SizedBox(
                        height: 30,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: colors.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {
                                selectedColorIndex = index;
                                if (mounted) {
                                  setState(() {});
                                }
                              },
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: colors[index],
                                child: selectedColorIndex == index
                                    ? Icon(
                                        Icons.check,
                                        color: Colors.white,
                                      )
                                    : null,
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return width8;
                          },
                        ),
                      ),

                      // Size

                      height16,
                      SizedBox(
                        height: 30,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: sizes.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                                borderRadius: BorderRadius.circular(4),
                                onTap: () {
                                  selectedSizeIndex = index;
                                  if (mounted) {
                                    setState(() {});
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                        color: selectedSizeIndex == index
                                            ? Colors.transparent
                                            : Colors.grey),
                                    color: selectedSizeIndex == index
                                        ? AppColor.primary
                                        : null,
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    sizes[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: selectedSizeIndex == index
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ));
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return width8;
                          },
                        ),
                      ),
                      height16,
                      Text(
                        "Description",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      height16,
                      Text(
                          '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'''),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: AppColor.primary.withOpacity(0.1),
                
              ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Price",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "\$150",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColor.primary),
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Add to cart",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.white),
                    ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
