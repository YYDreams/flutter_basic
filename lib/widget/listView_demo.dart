
import 'package:flutter/material.dart';
import 'package:flutter20200109_basic_parts/model/post.dart';
import 'package:flutter20200109_basic_parts/widget/post_detail_demo.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: posts.length,
        itemBuilder:_listItemBuilder,
    );
  }




Widget _listItemBuilder(BuildContext context, int index){

  return Container(
    color: Colors.white,
    margin: EdgeInsets.all(10),
    child: Stack(
      children: <Widget>[
       Column(
      children: <Widget>[
        //设置固定大小
        AspectRatio(
          aspectRatio: 16/9,
          child:  Image.network(posts[index].imageUrl,fit: BoxFit.cover,),
        ),
       
        SizedBox(height: 16,),
        Text(posts[index].title, style: Theme.of(context).textTheme.title),
        Text(posts[index].author, style:Theme.of(context).textTheme.subhead),
        SizedBox(height: 16,),
      ],
    ),
    //InkWell添加溅墨动画效果
    Positioned.fill(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white.withOpacity(0.3),
          highlightColor: Colors.white.withOpacity(0.1),
          onTap: (){
            
         Navigator.push(context, MaterialPageRoute(builder: (context) =>PostDetailPage(post: posts[index])));
             
         },
        ),
      ),
    )
      ],
    ),
  
  );
}

  
}