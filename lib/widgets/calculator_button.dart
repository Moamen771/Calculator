import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton(
      {super.key,
      required this.onTap,
      required this.color,
      required this.text,
      required this.isOperation});

  final Function() onTap;
  final Color color;
  final String text;
  final bool isOperation;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(8),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          fixedSize: Size(80, 80)),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 30,
            color: isOperation == true
                ? Colors.white
                : Theme.of(context).colorScheme.tertiary),
      ),
    );
  }
}
