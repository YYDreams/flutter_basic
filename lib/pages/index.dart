import 'package:flutter/material.dart';
import 'package:flutter20200109_basic_parts/pages/uikit.dart';
import 'package:flutter20200109_basic_parts/test.dart';

import 'compoents.dart';



class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  final List<BottomNavigationBarItem>  bottomBarItems  = [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('UIKit'),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings_input_component),
            title: Text('Compoents'),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings_power),
            title: Text('叫啥好呢'),
        ),
        
  ];
  final List<Widget> viewControllers = [
    UIKitPage(),
    CompoentsPage(),
    TestPage(),

  ];
 int _currentIndex = 1;
 var currentPage;

 //定义回调
 void _onTapHander(int index){
   setState(() {
      _currentIndex = index;
      currentPage = viewControllers[_currentIndex];
   });
 }

 @override
  void initState() {
    super.initState();
    currentPage = viewControllers[_currentIndex];

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, //如何不设置这个属性， items>=4 则所有的tabBar 会变色白色
        items: bottomBarItems,
        fixedColor: Colors.red, //  即选中之后的颜色
        currentIndex: _currentIndex,
        onTap: _onTapHander, //执行回调
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: viewControllers,
      ),

    );
   
  }
}

