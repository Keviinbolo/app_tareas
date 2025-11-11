import 'package:app_tareas/class/colores.dart';
import 'package:flutter/material.dart';

class PantallaPequena extends StatelessWidget {
  const PantallaPequena({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colores.colorPrimari,
        title: Text(style: TextStyle(color: Colors.white), 'Pantalla Pequeña'),
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
            backgroundColor: Colors.white,
            hoverColor: Colors.blueGrey,
            shape: CircleBorder(
              side: BorderSide(color: Colors.black, width: 2),
            ),
            onPressed: () {},
            child: Icon(Icons.arrow_forward, color: Colors.black),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: Colors.white,
            hoverColor: Colors.blueGrey,
            shape: CircleBorder(
              side: BorderSide(color: Colors.black, width: 2),
            ),
            onPressed: () {},
            child: Icon(Icons.favorite, color: Colors.black,),
          ),
        ],
      ),

      body: Center(child: Text('Pantalla Pequeña')),
    );
  }
}
