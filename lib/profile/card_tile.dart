import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  final String img;
  final String type;
  final Widget icon;
  const CardTile({
    super.key,
    required this.img,
    required this.type,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        img,
        height: 30,
        width: 30,
        fit: BoxFit.cover,
      ),
      title: Text(
        type,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 16,
        ),
      ),
      trailing: icon,
      onTap: (){},
    );
  }
}
