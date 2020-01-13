import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonsDemo extends StatelessWidget {
  const ButtonsDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
        elevation: 0.0,

      ),
        body: ListView(
          children: <Widget>[
            ListItem(title: 'FloationActionButton',page: FloationActionButtonDemo(),),
            ListItem(title: 'FlatButtonDemo',page: FlatButtonDemo(),),
            ListItem(title: 'RaisedButtonDemo',page: RaisedButtonDemo(),),
            ListItem(title: 'OutlineButtonDemo',page: OutlineButtonDemo(),),
            ListItem(title: 'ButtonBarDemo',page: ButtonBarDemo(),),
            ListItem(title: 'PopupMenuButtonDemo',page: PopupMenuButtonDemo(),)
            

          ],
        ),
    );

  }
}
class PopupMenuButtonDemo extends StatefulWidget {
  PopupMenuButtonDemo({Key key}) : super(key: key);

  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  String _currentMenuItem = '扫一扫';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('PopupMenuButtonDemo'),),
       body: Container(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                  Text(_currentMenuItem),
                  PopupMenuButton(
                    onSelected: (value){
                      print(value);
                      setState(() {
                        _currentMenuItem = value;
                      });
                    },
                     //typedef PopupMenuItemBuilder<T> = List<PopupMenuEntry<T>> Function(BuildContext context);
                    itemBuilder: (BuildContext context) => [
                        PopupMenuItem(
                       value: '扫一扫',
                       child: Text('扫一扫'),
                     ),
                     PopupMenuItem(
                       value: '发现',
                       child: Text('发现'),
                     ),
                     PopupMenuItem(
                       value: '收付款',
                       child: Text('收付款'),
                     ),
                    ],
                  )
               ],
             )
           ],
         ),
       ),

    );
  }
}


class ButtonBarDemo extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ButtonBarDemo'),),
      body:  Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buttonBarExample,
            ],
        ),
      ),

    );
  }

  final Widget buttonBarExample =  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonBar(
                  children: <Widget>[
                   OutlineButton(
                  onPressed:(){},
                  shape: StadiumBorder(),
                  // elevation: 20, //值越大阴影效果越明显
                  textColor: Colors.pink,
                  child: Text('buttonBar'),
                  //设置瞄边颜色
                  borderSide: BorderSide(
                    color: Colors.purple,
                  ),
                ),
                 OutlineButton(
                  onPressed:(){},
                  shape: StadiumBorder(),
                  // elevation: 20, //值越大阴影效果越明显
                  textColor: Colors.pink,
                  child: Text('buttonBar'),
                  //设置瞄边颜色
                  borderSide: BorderSide(
                    color: Colors.purple,
                  ),
                ),
                   OutlineButton(
                  onPressed:(){},
                  shape: StadiumBorder(),
                  // elevation: 20, //值越大阴影效果越明显
                  textColor: Colors.pink,
                  child: Text('buttonBar'),
                  //设置瞄边颜色
                  borderSide: BorderSide(
                    color: Colors.purple,
                  ),
                ),
                 OutlineButton(
                  onPressed:(){},
                  shape: StadiumBorder(),
                  // elevation: 20, //值越大阴影效果越明显
                  textColor: Colors.pink,
                  child: Text('buttonBar'),
                  //设置瞄边颜色
                  borderSide: BorderSide(
                    color: Colors.purple,
                  ),
                ),
               
                ],
                )
              ],
            );
}


class OutlineButtonDemo extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OutlineButtonDemo'),),
      body:  Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            outlineButtonExmple,
            ],
        ),
      ),

    );
  }

  final Widget outlineButtonExmple =  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                
               Expanded(
                 child:  OutlineButton(
                  onPressed:(){},
                  shape: StadiumBorder(),
                  // elevation: 20, //值越大阴影效果越明显
                  textColor: Colors.pink,
                  child: Text('OutlineButton'),
                  //设置瞄边颜色
                  borderSide: BorderSide(
                    color: Colors.purple,
                  ),
                ),
              
               ),
                 
               SizedBox(width: 15,),
               Expanded(
                 flex: 2,  //调整大小  默认为1
                 
                 child:  OutlineButton(
                  onPressed:(){},
                  shape: StadiumBorder(),
                  // elevation: 20, //值越大阴影效果越明显
                  textColor: Colors.pink,
                  child: Text('OutlineButton'),
                  //设置瞄边颜色
                  borderSide: BorderSide(
                    color: Colors.purple,
                  ),
                ),
              
               ),
               

                
              //  Container(
              //    width: 200, //设置宽度
              //    child:  OutlineButton(
              //     onPressed:(){},
              //     shape: StadiumBorder(),
              //     // elevation: 20, //值越大阴影效果越明显
              //     textColor: Colors.pink,
              //     child: Text('OutlineButton'),
              //     //设置瞄边颜色
              //     borderSide: BorderSide(
              //       color: Colors.purple,
              //     ),
              //   ),
              
              //  ),
               
              
              ],
            );
}

class RaisedButtonDemo extends StatelessWidget {
  const RaisedButtonDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RaisedButton'),),
      body:  Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed:(){},
                  // elevation: 20, //值越大阴影效果越明显
                  textColor: Colors.pink,
                  child: Text('RaisedButton'),
                  

                )

              ],
            )
          ],
        ),
      ),

    );
  }
}
class FlatButtonDemo extends StatelessWidget {
  const FlatButtonDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FlatButton'),),
      body: Container(
        padding: EdgeInsets.all(30),
        //mainAxisAlignment +  mainAxisAlignment 可使控件垂直居中
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               FlatButton(
                 child: Text('data'),
                 onPressed:(){},
                 splashColor: Colors.pink,
                 textColor: Theme.of(context).primaryColor,
               ),
                FlatButton(
                 child: Text('data1'),
                 onPressed:(){},
                 splashColor: Colors.pink,
                 textColor: Theme.of(context).primaryColor,
               )
             ],
           )
         ],
       ),
      ),
    );
  }
}

class FloationActionButtonDemo extends StatelessWidget {
  // const FloationActionButtonDemo({Key key}) : super(key: key);

final Widget  _floatingActionButton =  FloatingActionButton(
  onPressed: (){
  },
  child: Icon(Icons.add),
   backgroundColor: Colors.cyan,
   splashColor: Colors.grey,
   //BeveledRectangleBorder 设置之后会变成正方形
  //  shape: BeveledRectangleBorder(

  //  ),
  //  elevation:0.0, //阴影效果消失



);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FloationActionButtonDemo'),),
      body: Center(
        child: Text('FloatingActionButton==='),
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation:  FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
          color: Colors.green[200],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  
  final String title;
  final Widget page;

  ListItem({this.title,this.page});



  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(title),
        onTap: (){

          Navigator.push(context, MaterialPageRoute(builder: (context)=>page));

        },

      ),
      
    );
  }
}