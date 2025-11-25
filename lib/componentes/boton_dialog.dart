import 'package:flutter/material.dart';

class BotonDialog extends StatelessWidget {
  final String textbutton;
  const BotonDialog({super.key, required this.textbutton});

  @override
  Widget build(BuildContext context) {
    return Container(
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