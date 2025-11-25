import 'package:flutter/material.dart';

class DialogNovaTasca extends StatelessWidget {
  const DialogNovaTasca({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Nueva Tarea"),
      content: Text("Agregar algo nuevo"),
    );
  }
}