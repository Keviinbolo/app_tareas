import 'package:app_tareas/class/colores.dart';
import 'package:app_tareas/componentes/dialog_nova_tasca.dart';
import 'package:app_tareas/componentes/item_task.dart';
import 'package:flutter/material.dart';

class PantallaPequena extends StatelessWidget {
  const PantallaPequena({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colores.colorSecundario,
      appBar: AppBar(
        backgroundColor: Colores.colorPrimari,
        title: Text(
          style: TextStyle(color: Colores.colorTexto),
          'Pantalla Pequeña',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person, color: Colors.white),
          ),
        ],
      ),

      //Primer floating action button
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colores.colorPrimari,
            hoverColor: Colores.colorPrimariAccent,
            shape: CircleBorder(
              side: BorderSide(color: Colores.colorBorder, width: 2),
            ),
            onPressed: () {
              abrirDialogoNuevaTarea(context);
            },
            child: Icon(Icons.arrow_forward, color: Colores.colorTexto),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: Colores.colorPrimari,
            hoverColor: Colores.colorPrimariAccent,
            shape: CircleBorder(
              side: BorderSide(color: Colores.colorBorder, width: 2),
            ),
            onPressed: () {
              abrirDialogoNuevaTarea(context);
            },
            child: Icon(Icons.favorite, color: Colores.colorTexto),
          ),
        ],
      ),

      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 2,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(blurRadius: 5)],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ItemTask(valorText: index.toString());
              },
            ),
          ),
        ],
      ),
    );
  }

  void abrirDialogoNuevaTarea(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return DialogNovaTasca();
      },
    );
  }
}
