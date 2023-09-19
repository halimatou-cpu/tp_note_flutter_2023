import 'package:flutter/material.dart';
import 'choice_item.dart';

class Header extends StatelessWidget {
  const Header({Key? key, required this.selectedChoices}) : super(key: key);

  final List<String> selectedChoices;
  final String componentTitle = "Vos choix : ";
  final String emptyListText = "Cliquez sur les choix en dessous !";

  @override
  Widget build(BuildContext context) {
    final Widget choicesWidget;

    if (selectedChoices.isEmpty) {
      choicesWidget = Text(
        emptyListText,
        style: Theme.of(context).textTheme.bodyMedium,
      );
    } else {
      choicesWidget = Wrap(
        direction: Axis.horizontal,
        spacing: 15, // horizontal spacing
        runSpacing: 5, // vertical spacing
        children: selectedChoices
            .map(
              (choice) => ChoiceItem(
                itemText: choice,
              ),
            )
            .toList(),
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
              componentTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            choicesWidget,
          ],
        ),
      ),
    );
  }
}
