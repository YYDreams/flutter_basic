
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter20200109_basic_parts/model/post.dart';

class PostDetailPage extends StatelessWidget {

final Post post;
PostDetailPage({@required this.post,});

  // const PostDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
        elevation: 0.0, 
      ),
      body: Column(
        children: <Widget>[
          Image.network(post.imageUrl),
          Container(
            padding: EdgeInsets.all(30),
            width: double.infinity, //占满所有可用宽度

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('${post.title}',style: TextStyle(fontSize: 30),),
                Text('${post.author}',style: TextStyle(fontSize: 25),),
                //可用SizedBox设置间距
                SizedBox(height: 30),
               Text('${post.description}',style: TextStyle(fontSize: 20),),

              ],
            ),

          )
        ],
      ),
    );
  }
}