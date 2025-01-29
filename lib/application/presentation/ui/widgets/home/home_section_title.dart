import 'package:flutter/material.dart';

class HomeSectionTitle extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const HomeSectionTitle({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        Spacer(),
        TextButton(onPressed: onTap, child: Text("See All"))
      ],
    );
  }
}
