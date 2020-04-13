

import 'package:flutter/material.dart';

class DefaultTabControllerDemo extends StatelessWidget{

       @override
       Widget build(BuildContext context) {
         
         return MaterialApp(

           home: DefaultTabController(length: choices.length, 
           child: Scaffold(
             appBar: AppBar(
               title: Text("爱奇艺"),
               bottom: TabBar(
                 tabs: choices.map((Choice choice){
                   return Tab(
                     text: choice.title,
                     icon: Icon(choice.icon),
                   );

                 }).toList(),
               ),
             ),
             body: TabBarView(children: 
             choices.map((Choice choice){
                return Padding(
                  padding: EdgeInsets.all(16.0),
                  child: ChoiceChild(choice: choice,),
                );
                
             }).toList(),
             ),
           )
           )
         );
     
    }
}

//
class Choice{
  const Choice({this.title,this.icon});
  final String title;
  final IconData icon;
}

class ChoiceChild  extends StatelessWidget{
  //
  const ChoiceChild({Key key,this.choice}): super(key:key);
  final Choice choice;

   Widget build(BuildContext context) {
     final TextStyle textStyle = Theme.of(context).textTheme.display1;
     return Card(
       child: Center(
          child:Column(
         mainAxisAlignment: MainAxisAlignment.center, //居中
         children: <Widget>[ 
           Icon(choice.icon,size:120.0,color:textStyle.color),
           Text(choice.title,style:textStyle),

         ],
       ) ,
       ),
      
     );

   }
    
}

//集合    类型是：<Choice> 
const List<Choice> choices = <Choice>[
  Choice(title: "推荐",icon: Icons.receipt),
  Choice(title: "热门",icon: Icons.hot_tub),
  Choice(title: "电影",icon: Icons.receipt),
  Choice(title: "电视剧",icon: Icons.hot_tub),
  Choice(title: "综艺",icon: Icons.receipt),
  Choice(title: "动漫",icon: Icons.hot_tub),
];



class DidSampleDemo extends StatefulWidget {
  DidSampleDemo({Key key}) : super(key: key);

  @override
  _DidSampleDemoState createState() => _DidSampleDemoState();
}

class _DidSampleDemoState extends State<DidSampleDemo> {

  Choice _selectChoice =  choices[0];
  void _select(Choice choice){

    setState(() {
      _selectChoice = choice;

    });


  }
  @override


  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("爱奇艺"),
          actions: <Widget>[
            IconButton(icon:Icon(choices[0].icon), onPressed: (){
              _select(choices[0]);
            }),
            IconButton(icon:Icon(choices[1].icon), onPressed: (){
              _select(choices[1]);
            }),
              IconButton(icon:Icon(choices[2].icon), onPressed: (){
              _select(choices[2]);
            }),
            IconButton(icon:Icon(choices[3].icon), onPressed: (){
              _select(choices[3]);
            }),
            PopupMenuButton<Choice>(
              onSelected: _select,
              
              itemBuilder: (BuildContext context){
                //则弹框的时候不显示前面2个
                return choices.skip(2).map<PopupMenuItem<Choice>>((Choice choice){
                  return PopupMenuItem<Choice>(
                    value: choice,
                    child: Text(choice.title),
                  );

                }).toList();
              },
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ChoiceChild(choice:_selectChoice),

        ),
      ),
    );
  }
}