import 'package:flutter/material.dart';
import 'package:flutter20200109_basic_parts/pages/index.dart';
import 'package:flutter20200109_basic_parts/widget/datePicker_demo.dart';
import 'package:flutter20200109_basic_parts/widget/toasts_demo.dart';


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
        // home: IndexPage(),
        
        //添加路由 直接跳转到想去的页面
        initialRoute: '/widget',
        routes: {
           '/':(context) => IndexPage(),
           '/widget': (context) => ToastsDemo(),
        },
       

      
      ); 
  }
}