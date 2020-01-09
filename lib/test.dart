import 'package:flutter/material.dart';



class TestPage extends StatefulWidget {
  TestPage({Key key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('没想好'),),
        body: Container(
            //设置背景图片
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('http://a0.att.hudong.com/43/14/01300541155006139405143167464.jpg'),
                fit: BoxFit.cover, //覆盖整个
                alignment: Alignment.topCenter
                
              )

            ),
      // color: Colors.green[100],
      child: Row(
        //设置居中效果
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool,size: 30,),
            // color: Colors.orange,
            // padding: EdgeInsets.all(5),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
            color: Colors.green,

            //设置阴影
            boxShadow: [
              BoxShadow(
                offset: Offset(5.0, 7.0),
                color: Colors.red,
                blurRadius: 2, //值越大模糊的程度越明显
                spreadRadius: -1, //阴影的扩散程度 正数为大 负数为小

              )
            ],
            //设置成一个圆
            shape: BoxShape.circle,
            //线性渐变
            
            gradient: RadialGradient(
              colors: [
                Colors.blueGrey,
                Colors.blueAccent
              ],
            ),
            border: Border.all(
             color: Colors.blue


            ),

            //添加其中某个、多个圆角效果
            // borderRadius: BorderRadius.only(
            //   //左上和右上
            //   topLeft: Radius.circular(64),
            //   topRight: Radius.circular(64),
            // ),


            //添加四周边框
            // border: Border.all(
            //   color: Colors.orange,
            //   width: 3,
            //   style: BorderStyle.solid,
              
            // )
            //单独添加某一边
            // border:Border(
            //    //设置边框
            //   top: BorderSide(
            //     color: Colors.indigoAccent,
            //     width: 3,
            //     style: BorderStyle.solid,

            //   ),

            // ),
            ),


          )
        ],
      )
      

    ) ,
       
);

    
  }
}
