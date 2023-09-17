import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  ChoiceItem({Key? key, required this.itemText, this.color, this.onPressed})
      : super(key: key);

  final String itemText;
  Color? color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: color ?? Colors.grey,
            borderRadius: BorderRadius.circular(20.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 5.0,
          ),
          child: Text(
            itemText,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
