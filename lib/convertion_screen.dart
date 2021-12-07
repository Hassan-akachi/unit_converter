import 'package:flutter/material.dart';
import 'package:unit_converter/category_list_view.dart';
import 'package:unit_converter/si_unit.dart';

class convertionScreen extends StatelessWidget {
  final Unit unit;

  const convertionScreen({Key? key, required this.unit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(unit.title),
        backgroundColor: unit.unitColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            conversionTile("input", unit.unitColor),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.swap_vert,
                  size: 30,
                )),
            SizedBox(height: 20),
            conversionTile("Output", unit.unitColor)
          ],
        ),
      ),
    );
  }
}

Widget conversionTile(String input, Color unitcolor) {
  return Container(
      child: Column(children: [
    TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          labelText: input,
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: unitcolor)),
      ),
      cursorColor: unitcolor,
    ),
    DropdownButton(
      hint: Text(input),
      items: categoryNames.map((val) {
        return DropdownMenuItem<String>(value: val, child: Text(val));
      }).toList(),
    )
  ]));
}
