import 'package:flutter/material.dart';

import '../../screens/utility/app_colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          padding:  EdgeInsets.all(16),
          decoration: BoxDecoration(
          color: AppColor.primary.withAlpha(26),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(Icons.shop,size: 40,color: AppColor.primary,),
        ),
        const SizedBox(height: 8),
     Text("Electronic",style: TextStyle(fontSize: 15,color: AppColor.primary,letterSpacing: 0.4),)
      ],
    );
  }
}
