import 'package:flutter/material.dart';
import 'package:flutter20200109_basic_parts/widget/layout.dart';

class CompoentsPage extends StatelessWidget {
  const CompoentsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
   return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: _setupAppBar,
        body: _setupTabBarView,

       
      ),
    
      
   );

  }


Widget get _setupTabBarView{

  return  TabBarView(
           children: <Widget>[
             PageView(),
             Icon(Icons.face,size:120,color: Colors.red,),
            //  Icon(Icons.face,size:120,color: Colors.yellow,),
            
            //  Icon(Icons.face,size:120,color: Colors.green,),
            LayoutPage(),

           ],
         );
}

  //设置AppBar
Widget get _setupAppBar{


  return AppBar(
           //leading appBar左边按钮
           leading: IconButton(
             icon: Icon(Icons.menu),
             onPressed:(){
               print("Menu button is Pressed");
             }

           ),
           actions: <Widget>[
             IconButton(
             icon: Icon(Icons.search),
             onPressed:(){
               print("Search button is Pressed");
             }

           ),
              IconButton(
             icon: Icon(Icons.settings),
             onPressed:(){
               print("Seting button is Pressed");
             }

           ),
          
           ],
           title: Text('Hello'),

           //
           bottom: TabBar(
             indicatorColor: Colors.red,
             tabs: <Widget>[
               Tab(icon: Icon(Icons.local_activity)),
               Tab(icon: Icon(Icons.change_history)),
               Tab(icon: Icon(Icons.keyboard_backspace)),
             ],
           ),
         );
}
}



