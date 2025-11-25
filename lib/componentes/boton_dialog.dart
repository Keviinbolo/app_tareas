import 'package:flutter/material.dart';

class BotonDialog extends StatelessWidget {
  final String textbutton;
  final Color colorbutton;
  const BotonDialog({super.key, required this.textbutton, required this.colorbutton});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorbutton,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(Icons.add),
          SizedBox(width: 8),
          Text(textbutton)
        ],
      ),
    );
  }
}