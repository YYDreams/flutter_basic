import 'package:flutter/material.dart';
import 'package:flutter20200109_basic_parts/model/post.dart';

class DataTableDemo extends StatefulWidget {
  DataTableDemo({Key key}) : super(key: key);

  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true; 
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DataTableDemo'),),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            DataTable(

              sortColumnIndex: _sortColumnIndex, //排序栏目索引号
              sortAscending:  _sortAscending, // true按照栏目升序排列
              columns: [
                DataColumn(

                  label: Container(
                    // width: 100,
                    child: Text('姓名'),
                  ),
                  //typedef DataColumnSortCallback = void Function(int columnIndex, bool ascending);
                   //
                  onSort: (int columnIndex,bool ascending){
               
                    setState(() {
                       _sortColumnIndex = columnIndex;
                    _sortAscending = ascending;

                    posts.sort((a,b){
                      if(!ascending){
                           final c = a;
                       a = b;
                       b = c;
                      }
                      //比较字符长度
                      return a.title.length.compareTo(b.title.length);
                   

                    });
                    });

                  },
                ),
                DataColumn(
                  label: Text('部门'),
                ),
                 DataColumn(
                  label: Text('图片'),
                ),
                
              ],
              rows: posts.map((value){
                return DataRow(
                  
                  //row前面会出现一个复选框
                  selected: value.selected,
                  //typedef ValueChanged<T> = void Function(T value);
                  onSelectChanged: (bool isSelected){

                    setState(() {
                      if(value.selected != isSelected){
                        value.selected = isSelected;
                      }

                      
                    });
                  },
                  cells: [
                    DataCell(Text(value.title)),
                    DataCell(Text(value.author)),
                    DataCell(Image.network(value.imageUrl)),
                  ]
                );
              }).toList(),
            )
          ],
        ),
      ),

    );
  }
}