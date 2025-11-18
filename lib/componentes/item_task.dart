import 'package:app_tareas/class/colores.dart';
import 'package:flutter/material.dart';

class ItemTask extends StatefulWidget {
  final bool valorInicialCheckbox;
  final String valorText;
  const ItemTask({super.key, this.valorInicialCheckbox = false, this.valorText = ""});

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
            Transform.scale(
              scale: 1.2,
              child: Checkbox(
                side: BorderSide(color: Colors.white, width: 2),
                shape: CircleBorder(),
                value: valorCheckbox,
                checkColor: Colores.colorExito,
                onChanged: (valor) {
                  valorCheckbox = valor ?? false;
                  // "??": si valor es null, asignar false
                  setState(() {}); //Actualizar la interfaz
                },
              ),
            ),
            Expanded(
              child: Text(
                '${widget.valorText}  Tarea pendiente',
                style: TextStyle(color: Colores.colorTexto, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
