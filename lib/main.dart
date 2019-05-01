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
      home: MyHomePage(title: 'Flutter & Dart'),
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
  void handleOnPressed() => print('Pressed');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(''),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: handleOnPressed,
        tooltip: 'Just a floating Button',
        child: Icon(Icons.play_arrow),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
          color: Colors.purple[50],
        ),
      ),
    );
  }
}
