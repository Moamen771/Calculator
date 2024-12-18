import 'package:flutter/material.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({super.key, required this.buttons});

  final List<Widget> buttons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          spacing: 16,
          children: buttons),
    );
  }
}
