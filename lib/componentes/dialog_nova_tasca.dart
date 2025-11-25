import 'package:app_tareas/componentes/boton_dialog.dart';
import 'package:flutter/material.dart';

class DialogNovaTasca extends StatelessWidget {
  const DialogNovaTasca({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Nueva Tarea",),
      content: Container(
        child: Column(
          children: [
            TextField(

            ),
            Row(
              children: [
                BotonDialog(textbutton: "Agregar"),
                BotonDialog(textbutton: "Cancelar"),
              ],
            )
          ],
        ),
      ),
    );
  }
}