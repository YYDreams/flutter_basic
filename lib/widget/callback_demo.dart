import 'package:flutter/material.dart';


class CallbackDemo extends StatefulWidget {
  @override
  _CallbackDemoState createState() => _CallbackDemoState();
}

class _CallbackDemoState extends State<CallbackDemo> {
   int _count = 0;

   void _handerCountCallback(){
     setState(() {
            _count += 1;
          });

   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('回调'),),
      body: Counter(count: _count, handerCountCallback: _handerCountCallback,),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:_handerCountCallback,
        
      ),
    );
  }

}

class Counter extends StatelessWidget {
  final int count;
  //回调
  final VoidCallback handerCountCallback;

  Counter({this.count,this.handerCountCallback});

  @override
  Widget build(BuildContext context) {
    return Center(
  
        child:  ActionChip(
          label: Text('$count',),
          //typedef VoidCallback = void Function();

          onPressed: handerCountCallback,
        ),
    );
  }
}




