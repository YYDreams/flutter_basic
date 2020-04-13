import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter20200109_basic_parts/widget/card_demo.dart';
import 'package:flutter20200109_basic_parts/widget/uikitWidget/ContainerDemo.dart';
import 'package:flutter20200109_basic_parts/widget/uikitWidget/GirlViewDemo.dart';
import 'package:flutter20200109_basic_parts/widget/uikitWidget/defaultTabCtrl.dart';
import 'package:flutter20200109_basic_parts/widget/uikitWidget/horizontalDemo.dart';
import 'package:flutter20200109_basic_parts/widget/uikitWidget/stackDemo.dart';
import 'package:flutter20200109_basic_parts/widget/uikitWidget/textDemo.dart';

import '../widget/buttons_demo.dart';

/*
 * 包装控件
 * 函数
 * 调整
 * 
 * 
*/

class UIKitPage extends StatelessWidget {
//相当于OC中的类名
  final List<String> items = [
    "RichTextDemo",
    'ButtonsDemo',
    "DidSampleDemo",
    "DefaultTabControllerDemo",
    "HorizontalDemo",
    "ContainerDemo",
    "GirlViewDemo",
    "StackDemo",
    "CardDemo"
  ];
//显示的titles数组
  final List<String> itemTitles = [
    "RichTex富文本",
    'Buttons按钮',
    "示例",
    "tab切换",
    "水平布局",
    "Container",
    "GirlViewDemo",
    "层叠布局控件(Stack)",
    "CardDemo"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          'UIKit',
          overflow: TextOverflow.ellipsis,
        )),

        // body: RichTextDemo(),//行内多样式文字(一行文字有多种样式 可以使用RichText)
        //  body: HorizontalDemo(),//水平方向列表
        //  body: LongListDemo(),//长列表
        // body:GridViewDemo(),//网格列表
        // body: packedRow, //包装控件 OC中叫抽取方法
        body: GridView.builder(
          itemCount: items.length,
          itemBuilder: _itemBuilder,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 3,
            mainAxisSpacing: 3,
          ),
        ),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        _tapActions(context, index);
      },
      child: Stack(
        children: <Widget>[
          SizedBox.expand(
            //SizedBox会占满所有可用空间
            child: Container(
              alignment: Alignment(0.0, 0.0),
              color: Colors.green[200],
              child: Text(
                itemTitles[index],
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //所有的点击跳转事件
  _tapActions(BuildContext context, index) {
    if (index == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => RichTextDemo()));
    } else if (index == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ButtonsDemo()));
    } else if (index == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DidSampleDemo()));
    } else if (index == 3) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => DefaultTabControllerDemo()));
    } else if (index == 4) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HorizontalDemo()));
    } else if (index == 5) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ContainerDemo()));
    } else if (index == 6) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GirlViewDemo()));
    } else if (index == 7) {

      Navigator.push(context, MaterialPageRoute(builder: (context)=>StackDemo()));

    } else if (index == 8) {

      Navigator.push(context, MaterialPageRoute(builder: (context)=>CardDemo()));

    }
  }

  //包装控件
  Widget packedRow = Row(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Icon(Icons.star, color: Colors.green),
      Icon(Icons.star, color: Colors.green),
      Icon(Icons.star, color: Colors.green),
      Icon(Icons.star, color: Colors.grey),
      Icon(Icons.star, color: Colors.grey),
    ],
  );
}

//包装控件
//

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5, //几列
      // primary: false,

      padding: EdgeInsets.all(10),
      children: <Widget>[
        Text("data1"),
        Text("data2"),
        Text("data3"),
        Text("data4"),
        Text("data1"),
        Text("data2"),
        Text("data3"),
        Text("data4"),
      ],
    );
  }
}

class LongListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //构造数据
    final List<String> items = new List<String>.generate(100, (i) => "Itme $i");

    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        });
  }
}

// class HorizontalDemo extends StatelessWidget{

// @override
// Widget build(BuildContext context) {

//   return Container(
//        margin: EdgeInsets.symmetric(vertical: 50.0),//距离顶部的间隙
//        height: 200.0,

//        child: ListView(
//          scrollDirection:Axis.horizontal,//设置滚动的方向
//          children: <Widget>[
//            Container(
//             width:160.0,
//             child: Text("超级无敌"),
//             color: Colors.red,
//           ),
//              Container(
//             width:160.0,
//             color: Colors.orange,
//             child: Column(
//               children: <Widget>[
//                 Text("data1"),
//                 Text("data2"),
//                 Text("data3"),

//               ],

//             ),
//           ),
//              Container(
//             width:160.0,
//             color: Colors.yellow,
//           ),
//              Container(
//             width:160.0,
//             color: Colors.blue,
//           ),

//          ],

//        ),

//   );
// }

// }
