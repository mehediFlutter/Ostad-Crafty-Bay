import 'package:crafty_bay/application/presentation/ui/screens/product_details_screen/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/utility/app_colors.dart';
import '../../screens/utility/image_assets/image_assets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(ProductDetailsScreen());
      },
     borderRadius: BorderRadius.circular(8),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        shadowColor: AppColor.primary.withOpacity(0.1),
        child: SizedBox(
          width: 130,
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: AppColor.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  ),
                  image: DecorationImage(
                    image: AssetImage(ImageAssets.shoes),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      AppColor.primary.withOpacity(0.1), // Apply the color
                      BlendMode.srcOver, // Blend it with the image
                    ),
                  ),
                ),
              ),
              Text(
                'Nike show AK50479456',
                maxLines: 1,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis,
                    fontSize: 12,
                    color: Colors.blueGrey),
              ),
              const SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$90",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColor.primary,
                    ),
                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}