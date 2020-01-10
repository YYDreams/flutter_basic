
import 'dart:ui';

import 'package:flutter/material.dart';


class UIKitPage extends StatelessWidget {
  const UIKitPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // body: ,
      appBar: AppBar(title: Text('UIKit',overflow: TextOverflow.ellipsis,)),

      //行内多样式文字

     body: RichText(
       text: TextSpan(
         text: 'hello flutter',
         style: TextStyle(
           color: Colors.red,
           fontSize: 40,
           fontWeight: FontWeight.w100,

         ),

         children: [
           TextSpan(
             text: '你好 跨平台',
             style: TextStyle(
               fontSize: 20,
               color: Colors.black,
             ),

           ),
         ]
       ),
       

     ),
    );
  }
}

//一行文字有多种样式 可以使用RichText