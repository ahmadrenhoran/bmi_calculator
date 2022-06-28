import 'package:flutter/material.dart';

class RoundActionButton extends StatelessWidget {
  final Function()? onPress;
  final IconData icon;

  RoundActionButton({required this.onPress, required this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      child: Icon(icon),
    );
  }
}