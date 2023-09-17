import 'package:flutter/material.dart';

import 'choice_item.dart';

class Header extends StatelessWidget {
  const Header({Key? key, required this.selectedChoices}) : super(key: key);

  final List<String> selectedChoices;

  @override
  Widget build(BuildContext context) {
    if (selectedChoices.isEmpty) {
      return Container(
        color: Colors.deepPurpleAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Vos choix: ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "Cliquez sur les choix en dessous !",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      color: Colors.deepPurpleAccent,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Vos choix: ",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Wrap(
              direction: Axis.horizontal,
              spacing: 15, // horizontal spacing
              runSpacing: 5, // vertical spacing
              children: selectedChoices.map((choice) =>
                  ChoiceItem(
                    itemText: choice,
                  ),
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
