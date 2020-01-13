import 'package:flutter/material.dart';


class CheckboxDemo extends StatefulWidget {
  CheckboxDemo({Key key}) : super(key: key);

  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _throwShotAway = true;
  int _radioGroupA  = 0;
  //单选
  void _handlerRadioValueChanged(int value){
    
   setState(() {
     print(value); 
     _radioGroupA = value;
   });
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CheckboxDemo'),),
      body: Container(
        child: Column(
          children: <Widget>[
  
        RadioListTile(
            value: 0, 
            groupValue: _radioGroupA,
            onChanged: _handlerRadioValueChanged,
                title: Text('Checkbox item'),
              subtitle: Text('Descroption'),
              secondary: Icon(Icons.book),
              selected: _radioGroupA == 0,

        ),
           RadioListTile(
            value: 1, 
            groupValue: _radioGroupA,
            onChanged: _handlerRadioValueChanged,
                title: Text('Checkbox item1'),
              subtitle: Text('Descroption1'),
              secondary: Icon(Icons.book),
              selected: _radioGroupA == 1,

        ),


            // checkboxListTileExample,
            // checkboxExample,
            
            // Radio(
            //   value: 0,
            //   groupValue: _radioGroupA,
            //   onChanged: _handlerRadioValueChanged,
            //   activeColor: Colors.red,
            // ),
            // Radio(
            //   value: 1,
            //   groupValue: _radioGroupA,
            //   onChanged: _handlerRadioValueChanged,
            //   activeColor: Colors.red,
            // ),
         
          ],
        ),
      ),

    );
  }

  Widget get checkboxExample{

return 
   Checkbox(
              value: _throwShotAway, //复选框的状态 
              onChanged:(bool flag){
                setState(() {
                  _throwShotAway = flag;
                });
              }

            );
}
  
  Widget get  checkboxListTileExample{
     return     CheckboxListTile(
              value:  _throwShotAway,
              onChanged: (value){
                setState(() {
                  _throwShotAway = value;
                });
                
              },
              title: Text('Checkbox item'),
              subtitle: Text('Descroption'),
              secondary: Icon(Icons.book),
              selected: _throwShotAway,

            );
 
  }
}
