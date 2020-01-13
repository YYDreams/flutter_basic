import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  SwitchDemo({Key key}) : super(key: key);

  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemFlag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SwichDemo'),),

       body: Container(
         padding: EdgeInsets.all(20),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,

           children: <Widget>[
             SwitchListTile(
               value: _switchItemFlag,
               onChanged: (flag){
                 setState(() {
                   _switchItemFlag = flag;

                 });
               },

              title: Text('Checkbox item1'),
              subtitle: Text('Descroption1'),
              secondary: Icon(Icons.book),
              selected:  _switchItemFlag,
              

             ),

            
            //  Row(
            //    mainAxisAlignment: MainAxisAlignment.center,
            //    children: <Widget>[
            //      Text(_switchItemFlag ? '👌' : '😭',style: TextStyle(
            //        fontSize: 40
            //      ),),
            //      Switch(
            //        value: _switchItemFlag,
            //        onChanged: (bool flag){
            //         setState(() {
            //           _switchItemFlag = flag;
            //         });
            //        },
            //      )


               
            //    ],
            //  )
           ],
         ),

       ),
    );
  }
}