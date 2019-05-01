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

List<BottomNavigationBarItem> customBottomNavigationBarItem() {
  return [
    BottomNavigationBarItem(
      title: Text('Home'),
      icon: Icon(
        Icons.home,
      ),
    ),
    BottomNavigationBarItem(
      title: Text('Business'),
      icon: Icon(
        Icons.business,
      ),
    ),
    BottomNavigationBarItem(
      title: Text('School'),
      icon: Icon(
        Icons.school,
      ),
    )
  ];
}
