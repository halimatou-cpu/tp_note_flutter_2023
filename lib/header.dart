import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key, required this.choices}) : super(key: key);

  final List<String> choices;

  @override
  Widget build(BuildContext context) {
    if (choices.isEmpty) {
      return Center(
          child: Text(
            "Cliquez sur les choix ci-dessous",
            style: Theme
                .of(context)
                .textTheme
                .bodyLarge,
          )
      );
    }

    return Container(
      color: Colors.deepPurpleAccent,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          color: Colors.pink,
          child: Column(
            children: [
              Text(
                "Vos choix: ",
                style: Theme
                    .of(context)
                    .textTheme
                    .bodyLarge,
              )
            ],
          ),
        ),
      ),
    );
  }

}
