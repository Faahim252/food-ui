import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final double? width;
  final double? height;
  AddButton({super.key, this.width,  this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 50,
      height: height ?? 50,
      child: Icon(
        Icons.add,
        size: 20,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        shape: BoxShape.circle,
        color: Colors.amber,
        boxShadow: [
          BoxShadow(
            color: Colors.amber[300]!,
            blurRadius: 15.0,
            spreadRadius: 0.5,
          )
        ]
      ),
    );
  }
}
