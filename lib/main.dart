import 'package:flutter/material.dart';

import 'helpers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Udemy course',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: DefaultTabController(
        length: 3,
        child: MyHomePage(title: 'Flutter & Dart'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void handleOnPressed() => print('Pressed');

  void handleOnTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void handleDrawerOnTap() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: customTabList(),
        ),
        title: Text(widget.title),
        centerTitle: true,
        actions: <Widget>[
          CustomIconButton(
            icon: Icons.filter_list,
            onPressed: handleOnPressed,
          ),
          CustomIconButton(
            icon: Icons.filter_drama,
            onPressed: handleOnPressed,
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: customDrawerList(onTap: handleDrawerOnTap),
        ),
      ),
      body: TabBarView(
        children: customWidgetsList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: handleOnPressed,
        tooltip: 'Just a floating Button',
        child: Icon(Icons.play_arrow),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: customBottomNavigationBarItem(),
        currentIndex: _selectedIndex,
        onTap: handleOnTap,
        fixedColor: Colors.purple,
      ),
    );
  }
}
