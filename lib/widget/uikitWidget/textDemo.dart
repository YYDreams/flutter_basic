import 'package:flutter/material.dart';

/*
 * 文本与文本相关知识点
 * 
 * RichText:相当于OC中的富文本
 * 
 * 
*/
class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
         return GestureDetector(
           child: Text(
              "點點",
            ),
      onTap: () {
        print("點點我");
      },
         );
    //     body: RichText(
    //   text: TextSpan(  
    //       text: 'hello flutter',
    //       style: TextStyle(
    //         color: Colors.red,
    //         fontSize: 40,
    //         fontWeight: FontWeight.w100,
    //       ),
    //       children: [
    //         TextSpan(
    //           text: '你好 跨平台',
    //           style: TextStyle(
    //             fontSize: 20,
    //             color: Colors.black,
    //           ),
    //         ),
    //       ]),
    // ));
  }
}
