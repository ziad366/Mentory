import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({super.key, required this.imgURL});
  final String imgURL;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 100,
      backgroundImage: AssetImage(imgURL),
    );
  }
}
