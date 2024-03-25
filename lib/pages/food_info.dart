import 'package:flutter/material.dart';

class FoodInfo extends StatelessWidget {
  final String icon;
  final String value;
  const FoodInfo({super.key, required this.icon, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          height: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          value,
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
