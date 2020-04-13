import 'package:flutter/material.dart';
class ContainerDemo extends StatelessWidget{
/*
 * Conntainer 相当于前端的div
 * 
 * 
*/
       @override
       Widget build(BuildContext context) {
         
        
        return MaterialApp(
          home: Scaffold(
          appBar: AppBar(),
          body: container,
          ),
        );
    }


    Widget container = Container(

      decoration: BoxDecoration(
        color:Colors.red,
      ),
      child: Column(
        children: <Widget>[
          

          Row(
            
            children: <Widget>[
              Expanded(child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color:Colors.orange
                ),
              )),
            ],
            

          )
        ],
        
      ),

    );
}


