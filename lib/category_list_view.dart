import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:unit_converter/convertion_screen.dart';
import 'package:unit_converter/main.dart';
import 'package:unit_converter/si_unit.dart';

const List categoryNames = [
  'Length',
  'Area',
  'Volume',
  'Mass',
  'Time',
  'Digital Storage',
  'Energy',
  'Currency',
];
const List categoryColors = <Color>[
  Colors.teal,
  Colors.orange,
  Colors.pinkAccent,
  Colors.blueAccent,
  Colors.yellow,
  Colors.brown,
  Colors.purpleAccent,
  Colors.red,
];
const List categoryIcons = <IconData>[
  Icons.straighten,
  Icons.crop_5_4_outlined,
  Icons.wine_bar_outlined,
  Icons.line_weight,
  Icons.schedule_outlined,
  Icons.sd_storage_outlined,
  Icons.bolt,
  Icons.paid
];

class categoryListView extends StatelessWidget {
  final List<Unit> units = [
    Unit(
      "Length",
      Colors.teal,
    ),
    Unit('Area', Colors.orange),
    Unit('Volume', Colors.pinkAccent),
    Unit('Mass', Colors.blueAccent),
    Unit('Time', Colors.yellow),
    Unit('Digital Storage', Colors.brown),
    Unit('Energy', Colors.purpleAccent),
    Unit('Currency', Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    /** final categoryList = <CategoryTile>[];
        for (var i = 0; i < categoryNames.length; i++) {
        categoryList.add(CategoryTile(
        iconName: categoryIcons[i],
        convertion_unit: categoryNames[i],
        color: categoryColors[i]));
        }; **/
    return ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
              highlightColor: categoryColors[index],
              splashColor: categoryColors[index],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              child: ListTile(
                leading: Icon(
                  categoryIcons[index],
                  size: 50,
                ),
                title: Text(
                  categoryNames[index],
                  style: TextStyle(fontSize: 50),
                ),
                contentPadding: EdgeInsets.only(top: 20, left: 20),
              ),
              onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => convertionScreen(
                                  unit: units[index],//unit class is used for sending data
                                ))),
                    print("${categoryNames[index]} cliclked")
                  });
        },
        itemCount: categoryNames.length);
  }
}
