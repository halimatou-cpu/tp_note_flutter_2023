import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  ChoiceItem({Key? key, required this.itemText, this.color, this.onPressed})
      : super(key: key);

  final String itemText;
  Color? color = Colors.grey;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        alignment: Alignment.center,
        child: Text(
          itemText,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}

/*
  return Container(
      height: 30,
      width: 30,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
    );
*/
