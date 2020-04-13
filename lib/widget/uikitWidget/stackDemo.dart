import 'package:flutter/material.dart';
class StackDemo extends StatelessWidget{
       @override
       Widget build(BuildContext context) {
         
        
        return MaterialApp(
          home: Scaffold(
          appBar: AppBar(),
          body:stack
          ),
        );
    }

    Widget stack = Stack(
   alignment: const FractionalOffset(0.5 , 0.5), //设置偏移量 alignment决定子元素的排列位置

      children: <Widget>[

        new Container(
           child: new Image.network( 
             "https://upload-images.jianshu.io/upload_images/1658521-0cbb6ef69957b9d5.png?imageMogr2/auto-orient/strip|imageView2/2/w/1200",
              ),
        ),
         
         Positioned(
           right: 20,
           bottom: 100,
           child: 
          new Text(
          "我是多肉",
          style:TextStyle(
          fontSize: 20,
          color: Colors.white,
          ),
        ),        
         ),
         
      ],
    );
}


