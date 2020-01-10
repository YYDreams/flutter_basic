import 'package:flutter/material.dart';
import 'package:flutter20200109_basic_parts/model/commpoentsModel.dart';
import 'package:flutter20200109_basic_parts/widget/form_demo.dart';
import 'package:flutter20200109_basic_parts/widget/layout_demo.dart';
import 'package:flutter20200109_basic_parts/widget/listView_demo.dart';
import 'package:flutter20200109_basic_parts/widget/pageView_gridView_demo.dart';
import 'package:flutter20200109_basic_parts/widget/sliver_demo.dart';

class CompoentsPage extends StatelessWidget {

  const CompoentsPage({Key key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {

     return Scaffold(
         appBar: AppBar(title: Text('Compoents'),),
         body: GridView.builder(
           itemCount: commpoents.length,
           itemBuilder: _itemBuilder ,
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 3,
             crossAxisSpacing: 3,
             mainAxisSpacing: 3,
            
           ),
  
         ) ,
     );
 }

//所有的点击跳转事件
 _tapActions(BuildContext context, index){
 
 if(index == 0){
  Navigator.push(context, MaterialPageRoute(builder: (context) =>CommpoentsDemo1()));

 }else if(index == 1){
   Navigator.push(context, MaterialPageRoute(builder: (context)=> SliverPage(title: 'SliverPage',)));


 }else if(index == 2){
   
   Navigator.push(context, MaterialPageRoute(builder: (context) => FormDemo()));
 }
  


}

 Widget _itemBuilder(BuildContext context, int index){
   
   return GestureDetector(
     onTap: (){
       _tapActions(context, index);
     },
      child: Stack(
      children: <Widget>[
      SizedBox.expand( //SizedBox会占满所有可用空间
          child:Container(
            alignment: Alignment(0.0, 0.0),
            color: Colors.green[200],
            child: Text(
                         commpoents[index].title,
                         style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight:FontWeight.bold),
                        ),
          ),
        ),  
      ],
  
    ),
   );
 }
 

}

final List<String> _tabs = ['GridViewBuild','GridViewExtent',
                       'GridViewCount','PageView',
                       'PageViewBuilder','LayoutPage'];

class CommpoentsDemo1 extends StatelessWidget {




  const CommpoentsDemo1({Key key}) : super(key: key);


  
  @override
  Widget build(BuildContext context) {
  
   return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: _setupAppBar,
        body: _setupTabBarView,

       
      ));
  }


Widget get _setupTabBarView{

  return  TabBarView(
           children: <Widget>[
             ListViewPage(),
            //  GridViewBuildDemo(),
             GridViewExtentDemo(),
             GridViewCountDemo(),

             PageViewDemo(),
             PageViewBuilderDemo(),
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
           IconButton(
             icon: Icon(Icons.settings),
             onPressed:(){
               print("Seting button is Pressed");
             }

           ),
           ],
           title: Text('Hello'),

           
           bottom: TabBar(
             indicatorColor: Colors.red,
             
             tabs: <Widget>[
              
              //  Tab(text: Text(),);

               Tab(icon: Icon(Icons.local_activity)),
               Tab(icon: Icon(Icons.change_history)),
               Tab(icon: Icon(Icons.keyboard_backspace)),
              Tab(icon: Icon(Icons.local_activity)),
               Tab(icon: Icon(Icons.change_history)),
               Tab(icon: Icon(Icons.keyboard_backspace)),
             ],
           ),
         );
}

  
}



