import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  ChipDemo({Key key}) : super(key: key);

  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {

  List<String> _chipArrs = [
     '花园',
     '果园',
     '动物园',

  ];
  //单选
  String _choice = '动物园';

  String _actionStr = 'nothing';
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text('Chip_小碎片'),),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //如果使用Row的话 内容超出屏幕会报错 (RIGHT OVERFLOWED BY 144 PIXELS) 改成Wrap
            Wrap(
              spacing: 8,
              runSpacing: 28, //调整行与行之间的间隙

              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Chip(
                  label: Text('flowerflower'),
                  

                ),

                 Chip(  
                  label: Text('flowerflower'),
                  backgroundColor: Colors.orange,

                ),
                 Chip(  
                  label: Text('flowerflower'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text('王'),
                  ),
                ),
                 Chip(  
                  label: Text('flowerflower'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Image.network('https://upload-images.jianshu.io/upload_images/1658521-734e1af1f812a83a.png?imageMogr2/auto-orient/strip|imageView2/2/w/704'),
                  ),
                ),
                Chip(
                  label: Text('消失吧'),
                  onDeleted: (){},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: 'remove ',
                ),

               
                Container(
                  child: Text('你猜猜我打印啥---$_actionStr'),
                ),
              
                Wrap(
                    spacing: 10,
                    children: _chipArrs.map((tag){
                      return ActionChip(
                        label: Text(tag),
                        onPressed: (){

                          setState(() {
                            _actionStr = tag;
                          });

                        },

                      );
                    }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  // height: 32,
                ),
                Container(
                  child: Text('ChoiceChip---$_choice'),
                ),
               
                Wrap(
                    spacing: 10,
                    children: _chipArrs.map((tag){
                      return ChoiceChip(
                        label: Text(tag),
                        selectedColor: Colors.blue,
                        selected: _choice == tag,
                        onSelected: (value){
                          setState(() {
                            
                            _choice = tag;

                          });
                        },

                  

                      );
                    }).toList(),
                
                  
                  
                ),
                 Divider(
                  color: Colors.grey,
                  // height: 32,
                  // indent: 20 , //左边缩进
                ),

                Wrap(
                  spacing: 10,
                  children: _chipArrs.map((tag){
                    return Chip(
                      label: Text(tag),
                      deleteIcon: Icon(Icons.delete),
                      deleteIconColor: Colors.redAccent,

                      onDeleted: (){
                        
                        setState(() {
                          _chipArrs.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),

              ],
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: (){
          setState(() {
            _chipArrs = [
              '香蕉🍌',
              '橘子🍊',
              '哈密瓜🍈',
            ];
            _choice = '果园';
          });
        },
      )

    );
  }
}
// class ChipDemo extends StatelessWidget {
//   // const ChipDemo({Key key}) : super(key: key);
  

//   @override
//   Widget build(BuildContext context) {
    
   


//   }
// }

