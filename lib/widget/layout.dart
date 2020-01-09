

import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


 
return Column(
  //spaceAround 分布到周围
  //spaceBetween 分配到之间
  //spaceEvenly 平均分布在小部件之间
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[

//     //设置比例
//        AspectRatio(
//          aspectRatio: 16.0/9.0,
//         child: Container(
//         color: Colors.purple,
//   ),
// )

    //SizedBox 设置固定宽高 如果不设置则是默认撑开
   SizedBox(
     width: 200,
     height: 150,
     child: Container(
       //可调整图标位置
       alignment: Alignment(-1.0, 0.0),
       decoration: BoxDecoration(
         color: Colors.red,

       ),
       child: Icon(Icons.ac_unit, color:Colors.green,size: 50,) ,

     ),
 
   ),
       
     SizedBox(
       height: 20,


     ),

    SizedBox(
     width: 100,
     height: 100,
     child: Container(
       decoration: BoxDecoration(
         color: Colors.red,

       ),
       child: Icon(Icons.wallpaper, color:Colors.green,size: 50,) ,

     ),
     
   )

    
     
  ],
);
    // return Column(
    //   children: <Widget>[
    //     IconBadge(Icons.local_activity),
    //     IconBadge(Icons.local_airport),
    //     IconBadge(Icons.local_airport),
    //     IconBadge(Icons.local_airport),
    //     IconBadge(Icons.local_airport),
      
    //     IconBadge(Icons.local_airport),

    //   ],
    // );

  }

}


class IconBadge extends StatelessWidget{

final IconData icon;
final double size;
IconBadge(this.icon,{
this.size = 32.0
});

@override
Widget build(BuildContext context) {
   return Container(
     child: Icon(icon, size:size, color:Colors.white),
     width: size + 60,
     height: size + 60,
     color: Colors.green,

   ); 
 }


}






