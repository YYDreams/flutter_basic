
import 'package:flutter/material.dart';


//定义枚举
enum SimpleDialogOptionType{
 A,B,C,

}
enum AlertType{
  ok,
  cancel,
}

enum ModalBottomSheetType{
  ModalBottomSheetTypeA,
  ModalBottomSheetTypeB,
  ModalBottomSheetTypeC,
}
class ToastsDemo extends StatefulWidget {
  ToastsDemo({Key key}) : super(key: key);

  @override
  _ToastsDemoState createState() => _ToastsDemoState();
}

class _ToastsDemoState extends State<ToastsDemo> {
  String _choice = 'Nothing';

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      appBar: AppBar(title: Text('ToastsDemo'),),
     body: Container(
       padding: EdgeInsets.all(15),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         children: <Widget>[
           Text('you choice is $_choice'),

           RaisedButton(
              child: Text('SimpleDialog'),
             onPressed:_openSimpleDialog,
           ),
           RaisedButton(
             child: Text('AlertDialog'),
             onPressed: _openAlertDialog,
           ),
           RaisedButton(
             child: Text('ModalBottomSheet'),
             onPressed: _openModalBottomSheetAction,
           )

         ],
       ),
     ),

    );
     
  }
  Future _openAlertDialog() async{
 final alert =    await showDialog(
       context: context,
       barrierDismissible: false, //强制用户点击cancel or ok ,点击空白地方不会移除弹框
       builder: (BuildContext context){

         return AlertDialog(
           title: Text('AlertDialog'),
           
           content: Text('Are you ok ? ',textAlign: TextAlign.center,),
           actions: <Widget>[
             FlatButton(
               child: Text('cancel'),
               onPressed: (){
                 Navigator.pop(context,AlertType.cancel);
               },
             ),
             FlatButton(
               child: Text('ok'),
               onPressed: (){
                 Navigator.pop(context,AlertType.ok);
               },
             )
           ],
            

         );
       }

    );
    switch (alert) {
      case AlertType.ok:
      setState(() {
        _choice = 'OK';
      });
        
        break;
       case AlertType.cancel:
       setState(() {
         _choice = 'cancel';
       });
       break; 
      default:
    }


  }
//showDialog 是个异步的方法，如果想要得到真正返回的值  需要利用async / await
  Future _openSimpleDialog() async {
    
    
  final option =   await showDialog(
        context: context,
        builder: (BuildContext context){
     return SimpleDialog(
       title: Text('_openSimpleDialog'),
       children: <Widget>[
         
         SimpleDialogOption(
           child:Text('SimpleDialogOption A'),
           onPressed: (){
             Navigator.pop(context,SimpleDialogOptionType.A);
           },
           
         ),
           SimpleDialogOption(
           child:Text('SimpleDialogOption B'),
           
             onPressed: (){
             Navigator.pop(context,SimpleDialogOptionType.B);
           },
           
         ),
           SimpleDialogOption(
           child:Text('SimpleDialogOption C'),
             onPressed: (){
             Navigator.pop(context,SimpleDialogOptionType.C);
           },
           
           
         ),
       ],
     );
        }
      );
    
    
    switch (option) {
      case SimpleDialogOptionType.A:

      setState(() {
        
        _choice = 'A';
      });
        
        break;
           case SimpleDialogOptionType.B:

      setState(() {
        
        _choice = 'B';
      });
        
        break;
      case SimpleDialogOptionType.C:

      setState(() {
        
        _choice = 'C';
      });
        
        break;
      default:
    }
    }

 
 _openModalBottomSheetAction() async{
  final sheet =  await  showModalBottomSheet(
       context: context,
       builder:(BuildContext context){
         return Container(
           height: 200,
           child: Column(
             children: <Widget>[
               ListTile(
                 title: Text('ModalBottomSheet A '),
                 onTap: (){
                   Navigator.pop(context,ModalBottomSheetType.ModalBottomSheetTypeA);
                 },
               ),
                ListTile(
                 title: Text('ModalBottomSheet B '),
                 onTap: (){
                   Navigator.pop(context,ModalBottomSheetType.ModalBottomSheetTypeB);
                 },
               ),
                ListTile(
                 title: Text('ModalBottomSheet C '),
                  onTap: (){
                    Navigator.pop(context,ModalBottomSheetType.ModalBottomSheetTypeC);
                  },
               ),
             ],
           ),
         );
       }
     );
     switch (sheet) {
       case ModalBottomSheetType.ModalBottomSheetTypeA:
       setState(() {
                   _choice = 'A';

       });
         
         break;
         case ModalBottomSheetType.ModalBottomSheetTypeB:
           setState(() {
                   _choice = 'B';

       });
         break;
         case ModalBottomSheetType.ModalBottomSheetTypeC:
           setState(() {
                   _choice = 'C';

       });
         break;
       default:
     }
   }

   
   }

