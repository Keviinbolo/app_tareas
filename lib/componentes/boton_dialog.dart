import 'package:flutter/material.dart';

class BotonDialog extends StatelessWidget {
  const BotonDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(Icons.add),
          SizedBox(width: 8),
          Text('Agregar')
        ],
      ),
    );
  }
}