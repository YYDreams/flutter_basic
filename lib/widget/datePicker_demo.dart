import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class DetaPickerDemo extends StatefulWidget {
  DetaPickerDemo({Key key}) : super(key: key);

  @override
  _DetaPickerDemoState createState() => _DetaPickerDemoState();
}

class _DetaPickerDemoState extends State<DetaPickerDemo> {
   DateTime selectedDate = DateTime.now();
   TimeOfDay selectedTime = TimeOfDay(hour: 8,minute: 40);
  //定义函数
  _selectDate() async{
    final DateTime date  = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2005),
      lastDate: DateTime(2021),

    );
    if (date == null) return;
    setState(() {

      selectedDate = date;

    });
  }
  _selectTime() async{
    final TimeOfDay time  = await showTimePicker(
      context: context,
      initialTime: selectedTime
      );
      if (time == null) return;
      setState(() {
        selectedTime = time;

      });


  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text('DetaPickerDemo'),),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: _selectDate,
                  child: Row(
                    children: <Widget>[
                      Text(DateFormat.yMMMd().format(selectedDate)),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
                InkWell(
                  onTap: _selectTime,
                  child: Row(
                    children: <Widget>[
                      Text(selectedTime.format(context)),
                      Icon(Icons.arrow_drop_down),
                   
                    ],
                  ),
                )
                
              ],
            )

          ],
        ),
      ),
   );
  }
}