import 'package:flutter/material.dart';

import 'index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.red,
          highlightColor: Colors.orange,
          splashColor: Colors.green
        ),
        home: IndexPage(),
      ); 
  }
}