import 'package:app_tareas/class/colores.dart';
import 'package:flutter/material.dart';

class ItemTask extends StatefulWidget {
  final bool valorInicialCheckbox;
  const ItemTask({super.key, this.valorInicialCheckbox = false});

  @override
  State<ItemTask> createState() => _ItemTaskState();
}

class _ItemTaskState extends State<ItemTask> {
  late bool valorCheckbox; //late: para declarar sin inicializar

  @override
  void initState() {
    super.initState();
    valorCheckbox = widget.valorInicialCheckbox;
    //widget: para acceder a las propiedades del widget desde el estado
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colores.colorSurface,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            //Checkbox
            Checkbox(
              value: valorCheckbox,
              onChanged: (valor) {
                valorCheckbox = valor ?? false;
                // "??": si valor es null, asignar false
                setState(() {}); //Actualizar la interfaz
              },
            ),
            Expanded(
              child: Text(
                'Ejemplo',
                style: TextStyle(color: Colores.colorTexto, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
