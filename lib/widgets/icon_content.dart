import 'package:flutter/material.dart';
class IconContent extends StatelessWidget {
  final IconData iconData;
  final String lable;
  IconContent({required this.iconData, required this.lable});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 40,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          lable,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}

