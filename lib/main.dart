import 'package:flutter/material.dart';
import 'package:unit_converter/category_list_view.dart';
import 'package:unit_converter/convertion_screen.dart';

void main() {
  runApp( MyApp());
}
const ColorSwatch defaultColor =Colors.greenAccent;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "Unit Converter",
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(title: Text("select a unit"),elevation: 0.0,),
       backgroundColor: defaultColor,
     body: categoryListView(),
     ),
   );
  }
}


