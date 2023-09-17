import 'package:flutter/material.dart';
import 'package:tp_note/choice_item.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key, required this.availableChoices}) : super(key: key);

  final List<String> availableChoices;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 15, // horizontal spacing
          runSpacing: 5, // vertical spacing
          children: availableChoices.map((choice) =>
              ChoiceItem(
                itemText: choice,
                color: Colors.orangeAccent,
              ),
          ).toList(),
        ),
      ),
    );
  }
}
