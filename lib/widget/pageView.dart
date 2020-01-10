import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/post.dart';

class PageViewPage extends StatelessWidget {
  const PageViewPage({Key key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    

      return GridViewBuildDemo();
    //  return GridViewExtentDemo();  //网格视图2
    // return  GridViewDemo(); //网格视图1

    // return GridViewCountDemo();  //分页视图1
    // return PageViewBuilderDemo(); //分页视图2

  }


}

// 用GridView.count或者PageView.builder生成的网格是固定的
// 如果需要 按需生成

class GridViewBuildDemo extends StatelessWidget {
  const GridViewBuildDemo({Key key}) : super(key: key);
//typedef IndexedWidgetBuilder = Widget Function(BuildContext context, int index);
   Widget _itemBuilder(BuildContext context, int index){
       return Stack(
      children: <Widget>[

        SizedBox.expand( //SizedBox会占满所有可用空间
        child: Image.network(posts[index].imageUrl,
        fit:BoxFit.cover),
        ),
      ],
  
    );
   } 
  @override
  Widget build(BuildContext context) {
     return GridView.builder(
         padding: EdgeInsets.all(10),
         itemCount: posts.length,
         itemBuilder: _itemBuilder,
         //实现代理
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 3,
           crossAxisSpacing: 10,
           mainAxisSpacing: 10,

         ),

     );

  }
}

//网格视图2
class GridViewExtentDemo extends StatelessWidget {
  const GridViewExtentDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
        maxCrossAxisExtent: 100.0,
       crossAxisSpacing: 10,
       mainAxisSpacing: 10,
       children: _buidTitles(50),
    );
  }
  //生成一组列表
  List<Widget> _buidTitles(int length){
      return List.generate(length, (index){

          return  Container(
          color: Colors.red,
          alignment: Alignment(0.0,0.0),
          child: Text(
            'item$index',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        );
      });
  }

}


//网格视图1
class GridViewCountDemo extends StatelessWidget {
  const GridViewCountDemo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
      return GridView.count(
      crossAxisCount:3,
      crossAxisSpacing: 10, //列间隙
      mainAxisSpacing: 10, //行间隙
      // scrollDirection: Axis.horizontal, //设置成水平滚动
      children: _buidTitles(100), //生成100个item数据
     );
  }
 //生成一组列表
  List<Widget> _buidTitles(int length){
      return List.generate(length, (index){

          return  Container(
          color: Colors.red,
          alignment: Alignment(0.0,0.0),
          child: Text(
            'item$index',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        );
      });
  }




}

//分页视图2
class PageViewBuilderDemo extends StatelessWidget {
  const PageViewBuilderDemo({Key key}) : super(key: key);

//typedef IndexedWidgetBuilder = Widget Function(BuildContext context, int index);

  Widget _itemBuilder(BuildContext context, int index){

    return Stack(
      children: <Widget>[
      
        SizedBox.expand( //SizedBox会占满所有可用空间
        child: Image.network(posts[index].imageUrl,
        fit:BoxFit.cover),
        ),
       Positioned(
         bottom: 8,
         left: 10,
         child: Column(
             children: <Widget>[
           Text(posts[index].title,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight:FontWeight.bold),),
           Text(posts[index].author,style: TextStyle(fontSize: 18,color: Colors.white,fontWeight:FontWeight.bold),),
             ],
         ),           
          )      
      ],
  
    );
  }
  @override
  Widget build(BuildContext context) {
   return PageView.builder(
      itemCount: posts.length,

      itemBuilder: _itemBuilder,
    );
  }
}

//分页视图1
class PageViewDemo extends StatelessWidget {
  const PageViewDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return PageView(
      // pageSnapping: false, //可以随意滚动到任意位置  相当于没有设置分页效果
      // reverse:  true, //滚动反向发生改变   如果不设置 则默认是往右滑 变成TWO   设置之后往左滑变成TWO   
scrollDirection:Axis.vertical, // 设置滚动方向（ 水平 or 垂直）  默认水平滚动

//当滚动到下一页时会调用
 onPageChanged: (currentPage) => debugPrint('xxxx $currentPage'),
 //设置默认选中
 controller: PageController(
   initialPage: 1,
  // keepPage: false, //记住用户滚动到哪个位置
  // 占用可视范围面积的百分之85
  // viewportFraction: 0.85,


 ),

        children: <Widget>[
          Container(
           color: Colors.green,
           alignment: Alignment.center,
           child: Text('ONE',style:TextStyle(
             fontSize: 30,color: Colors.white
           )),
          ),
               Container(
           color: Colors.green[300],
           alignment: Alignment.center,
           child: Text('TWO',style:TextStyle(
             fontSize: 30,color: Colors.white
           )),
          ),
               Container(
           color: Colors.green[900],
           alignment: Alignment.center,
           child: Text('THREE',style:TextStyle(
             fontSize: 30,color: Colors.white
           )),
          ),

        ],
    );
  }
  
}