import 'package:flutter/material.dart';
import 'package:flutter20200109_basic_parts/model/post.dart';

class CardDemo extends StatelessWidget {
  const CardDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CardDemo'),),
      body: Container(
        child: ListView(
          children: posts.map((post){
            return Card(
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: ClipRRect(
                      //设置左上右上圆角
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                      child: Image.network(
                        post.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    )
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(post.imageUrl),

                    ),
                    title: Text(post.title),
                    subtitle: Text(post.author),

                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text(post.description,maxLines: 3,overflow: TextOverflow.ellipsis,),

                  ),
                  

                  SizedBox(height: 10,)
                ],
              ),
            );
          }).toList(),
        ),
      ),
      
      
    );
  }
}