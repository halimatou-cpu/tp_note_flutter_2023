import 'package:flutter/material.dart';
import 'package:tp_note/choice_item.dart';

class Footer extends StatelessWidget {
  Footer({Key? key}) : super(key: key);

  List<String> choices = [
    "cinema",
    "petanque",
    "fitness",
    "League Of Legend",
    "basket",
    "shopping",
    "programming",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        color: Colors.white,
        child: ChoiceItem(
          itemText: choices[0],
          color: Colors.orangeAccent,
        ),
      ),
    );
  }
}
