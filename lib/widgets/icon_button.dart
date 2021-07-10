import 'package:flutter/material.dart';

class RoundInputButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onpressed;
  RoundInputButton({required this.icon,required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressed,
      shape:CircleBorder(),
      elevation: 0.0,
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        height: 45,
        width: 45,
      ),
      child: Icon(icon,size: 18,),
    );
  }
}
