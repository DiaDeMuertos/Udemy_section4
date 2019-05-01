import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({this.onPressed, this.icon});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      tooltip: 'Just an Icon Buttom',
      icon: Icon(icon),
    );
  }
}
