import 'package:flutter/material.dart';

class HorizontalDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Row(
          //水平布局时文本太长导致显示有问题,可使用Expanded进行包裹
          children: <Widget>[
            Expanded(
              child: Text("打了打就打；打架了肯定是劳动竞赛淡蓝色定是劳动竞赛定是劳动竞赛的交流交流的都是多所多色热热热无热无"),
            )
          ],
        ),
      ),
    );
  }
}
/**
 * Conntainer 相当于div
 * 
 * å
*/
