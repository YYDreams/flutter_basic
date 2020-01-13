import 'dart:math';

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

  final textEditingController = TextEditingController();

  @override
  void initState() {
    
      // textEditingController.text = 'flowerflower';   //设置默认值
      //添加观察者
    textEditingController.addListener((){
      debugPrint('${textEditingController.text}');

    });
    super.initState();

    
    
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center, 
           
          children: <Widget>[

            RegisterFormDemo(), //将下面的进行封装
    //          TextField(
    //            controller: textEditingController,
    //                //每次输入都会调用
    //               onChanged: (value){
    //                 debugPrint(value);
                    
    //               },
    //               //按完回车键就会调用
    //               onSubmitted: (text){
    //                 debugPrint('text:$text');

    //               },
    //               decoration: InputDecoration(
    //               icon: Icon(Icons.subject),
    //               labelText: '账号',
    //               hintText: '请输入你的账号',
    //               // border: InputBorder.none, //不显示下划线
    //               ),
    // ),
    //      TextField(
    //               decoration: InputDecoration(
    //               icon: Icon(Icons.lock),
    //               labelText: '密码',
    //               hintText: '请输入你的密码'
    //               ),
    // ),
    
          ],
        ),
      ),
    );
  }
}


//注册用户表单
class RegisterFormDemo extends StatefulWidget {
  RegisterFormDemo({Key key}) : super(key: key);

  @override
  _RegisterFormDemoState createState() => _RegisterFormDemoState();
}

class _RegisterFormDemoState extends State<RegisterFormDemo> {
  final registerFormKey  = GlobalKey<FormState>();
  String username,password; 
 bool autovalidate = false; //自动验证

  //函数
  void _submitRegisterFormAction(){

    if(registerFormKey.currentState.validate()){
    //保存表单填写的数据
      registerFormKey.currentState.save();
      //验证用户名/密码
      registerFormKey.currentState.validate();
      print('username$username----password:$password');

    //底部显示
      Scaffold.of(context).showSnackBar(
        SnackBar(
           content: Text('注册中....'),
        )
      );
    }else{
      setState(() {
        autovalidate = true;
      });
    }

  }
  //验证用户名
  String _validatorUserName(userNameStr){

      if(userNameStr.isEmpty){
        return '请输入用户名';
      }
    return null;
  }
  //验证密码
  String _validatorPassword(passwordStr){

      if(passwordStr.isEmpty){
        return '请输入密码';
      }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
       child: Column(
         children: <Widget>[
           TextFormField(
             decoration: InputDecoration(
               labelText: 'userName',
               helperText: '',
             ),
             onSaved: (value){


               username = value;
             },
             validator: _validatorUserName,
            //  autovalidate: true, //直接显示需要验证的信息 相当于自动掉了validate()方法
            autovalidate: autovalidate,
           ),
           TextFormField(
             obscureText: true, //安全输入 即（输入之后会 变成小圆点显示）
             decoration: InputDecoration(
               labelText: 'password',
               helperText: '',
             ),

             onSaved: (value){
               password = value;


             },
             validator: _validatorPassword,
             autovalidate: autovalidate,
            //  autovalidate: true, //直接显示需要验证的信息 相当于自动掉了validate()方法
           ),
           SizedBox(height: 15,),
           Container(
             width: double.infinity,

             child: RaisedButton(
               color: Theme.of(context).accentColor,
               child: Text('注册'),
              //  elevation: 0.0,
               
                textColor: Colors.blue[200],
                onPressed: _submitRegisterFormAction,
         

             ),
           )
         ],
       ),
    );
  }
}