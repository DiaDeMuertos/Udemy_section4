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

List<Widget> customWidgetsList() {
  return [
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('directions_railway'),
        ],
      ),
    ),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('directions_subway'),
        ],
      ),
    ),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('directions_bike'),
        ],
      ),
    )
  ];
}

List<Widget> customTabList() {
  return [
    Tab(icon: Icon(Icons.directions_railway)),
    Tab(icon: Icon(Icons.directions_subway)),
    Tab(icon: Icon(Icons.directions_bike)),
  ];
}
