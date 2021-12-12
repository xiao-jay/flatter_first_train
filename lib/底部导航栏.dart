// import 'package:flutter/material.dart';
//
//
//
//
// class Tabs extends StatefulWidget{
//   const Tabs({Key? key}) : super(key: key);
//
//
//   _MyApp createState() => _MyApp();
// }
// class _MyApp extends State<Tabs> {
//   int _currentIndex=0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(title: const Text('用户注册')),
//       // body: Text('a'),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: this._currentIndex,
//         onTap: (int index){
//           setState((){
//             this._currentIndex = index;
//           });
//         },
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "首页"
//           ),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.category),
//               label: "分类"
//           )
//         ],
//       ),
//     ));
//   }
//
//
// }
//
//
// void main() => runApp(_MyApp());
