
import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const CircularIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: CircleAvatar(
        radius: 16,
        backgroundColor: Colors.grey.shade300,
        child: Icon(
          icon,
          color: Colors.grey,
          size: 20,
        ),
      ),
    );
  }
}
