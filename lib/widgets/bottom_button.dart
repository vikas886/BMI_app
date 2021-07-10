import 'package:flutter/material.dart';

import '../constant.dart';
class BottomButtom extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonTitle;
  BottomButtom({required this.buttonTitle, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Constant.bottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: Constant.bottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: Constant.largeButtonstyle,
          ),
        ),
      ),
    );
  }
}