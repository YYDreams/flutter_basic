
import 'package:flutter/material.dart';
import 'package:flutter20200109_basic_parts/model/post.dart';

class SliverPage extends StatelessWidget {
  final String title;
  const SliverPage({Key key,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverSafeArea( //安全区域内
              sliver:SliverPadding(  //添加内边距
              padding: EdgeInsets.all(10),
              sliver:  _setupSliverGrid,

            ), 
            ),
          
          ],
        ),
    );
  }

Widget get _setupSliverGrid{
   return SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context,int index){
                  return Container(
                    child: Image.network(posts[index].imageUrl,fit: BoxFit.cover,),
                  );
        
                },
                childCount: posts.length,

                
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.6 //
              // childAspectRatio: 1.6
              ),

            );

}
}

