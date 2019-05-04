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
    ),
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
    ),
    CustomScrollView(
      slivers: customSliversList(),
    )
  ];
}

List<Widget> customTabList() {
  return [
    Tab(icon: Icon(Icons.directions_railway)),
    Tab(icon: Icon(Icons.directions_subway)),
    Tab(icon: Icon(Icons.directions_bike)),
    Tab(icon: Icon(Icons.note_add))
  ];
}

List<Widget> customDrawerList({Function onTap}) {
  return <Widget>[
    ListTile(
      leading: Icon(Icons.alarm),
      title: Text('Alarm'),
      onTap: onTap,
    ),
    ListTile(
      leading: Icon(Icons.history),
      title: Text('History'),
      onTap: onTap,
    )
  ];
}

List<Widget> customSliversList() {
  return [
    SliverAppBar(
      floating: false,
      pinned: true,
      expandedHeight: 150,
      flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Text('Epic Sliver'),
          background: Image.network(
            "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
            fit: BoxFit.cover,
          )),
    ),
    SliverFixedExtentList(
      itemExtent: 50,
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            child: Text('index ${(index + 1)}'),
          );
        },
        childCount: 20,
      ),
    )
  ];
}
