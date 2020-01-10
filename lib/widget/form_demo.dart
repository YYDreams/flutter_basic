import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  const FormDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
       body: Theme(
         data: Theme.of(context).copyWith(primaryColor: Colors.orange),
        child: TextFieldDmo(),
       ),
       
      );
  }
}


class TextFieldDmo extends StatefulWidget {
  TextFieldDmo({Key key}) : super(key: key);

  @override
  _TextFieldDmoState createState() => _TextFieldDmoState();
}

class _TextFieldDmoState extends State<TextFieldDmo> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center, 
          children: <Widget>[
             TextField(
                  decoration: InputDecoration(
                  icon: Icon(Icons.subject),
                  labelText: '账号',
                  hintText: '请输入你的账号',
                  border: InputBorder.none, //不显示下划线
                  ),
    ),
         TextField(
                  decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: '密码',
                  hintText: '请输入你的密码'
                  ),
    ),
    
          ],
        ),
      ),
    );
  }
}