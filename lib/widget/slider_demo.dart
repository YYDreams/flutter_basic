import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  SliderDemo({Key key}) : super(key: key);

  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double  _valueDouble = 0.2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('SliderDemo'),),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('$_valueDouble',style: TextStyle(
                fontSize: 25,
              ),),
              Slider(
                value: _valueDouble,
                min: 0.0,
                max: 10.0,
                divisions: 5, //分成10份
                label: '${_valueDouble.toInt()}',
                onChanged: (value){
                  print(value);
                  setState(() {
                    _valueDouble = value;
                    
                  });
                  
                },
              )

            ],
          ),
        ),
    );
  }
}