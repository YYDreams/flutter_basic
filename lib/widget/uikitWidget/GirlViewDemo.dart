import 'package:flutter/material.dart';
class GirlViewDemo extends StatelessWidget{


       @override
       Widget build(BuildContext context) {

         return Scaffold(
           appBar: AppBar(),
           body: Center(
             child: buidGrild(),
           ),
         );
    
    }
Widget buidGrild(){
  return GridView.extent(
    maxCrossAxisExtent: 150.0,
    padding: EdgeInsets.all(15.0),
    mainAxisSpacing: 4.0,
    crossAxisSpacing: 4.0,
    children: _buildGrivTitleList(9),

  );      
}
         
         List<Container> _buildGrivTitleList(int count){
 
             return new List<Container>.generate(
            count,(int index)=>Container(
              width: 50,
              height: 50,
              color: Colors.orange,
              // '${items[index]}'
          child: Text('我是小仙女${index}号',
                        textAlign: TextAlign.center,
                      style:TextStyle(
                       
         ))));
}

}





       

 
