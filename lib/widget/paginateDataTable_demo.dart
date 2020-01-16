import 'package:flutter/material.dart';
import 'package:flutter20200109_basic_parts/model/post.dart';


class PostDataSource extends DataTableSource{

final List<Post> _posts = posts;
int _selectedRowCount = 0;

 @override
  int get rowCount => _posts.length;

@override
  
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedRowCount;

  @override
  //每一行的具体内容 
  DataRow getRow(int index) {
    final Post post =  _posts[index];
    return DataRow.byIndex(
      index: index,
      cells: <DataCell>[
        DataCell(Text(post.title)),
        // DataCell(Text(post.author)),
        DataCell(Image.network(post.imageUrl)),
      ]
    );
  }


}

class PaginateDataTableDemo extends StatefulWidget {

  PaginateDataTableDemo({Key key}) : super(key: key);

  @override
  _PaginateDataTableDemoState createState() => _PaginateDataTableDemoState();
}

class _PaginateDataTableDemoState extends State<PaginateDataTableDemo> {
  int _sortColumnIndex;
  bool _sortAscending = true;
  final PostDataSource _postsDataSource =  PostDataSource();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('分页显示表格数据'),),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            PaginatedDataTable(
              header: Text('显示表格数据'),
              source: _postsDataSource,
              // rowsPerPage: 6, //控制每一页显示的行数

              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              columns:[
                DataColumn(
                  label: Text('title'),
                  //typedef DataColumnSortCallback = void Function(int columnIndex, bool ascending);

                  onSort: (int columnIndex, bool ascending){
                  
                    setState(() {
                     _sortColumnIndex = columnIndex;
                    _sortAscending = ascending;
                    posts.sort((a,b){
                      if(!ascending){
                        final c = a;
                        a = b;
                        b = c;

                      }
                      return a.title.length.compareTo(b.title.length);
                    });
                    });
                  }
                ),
                // DataColumn(
                //   label: Text('Author'),
                // ),
                  DataColumn(
                    label: Text('Images'),
                  

                ),
              ],
              
              
            )
          ],
          
        ),
      ),
    );
  }
}