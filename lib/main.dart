import 'package:app_tareas/paginas/pagina_principal/pantalla_grande.dart';
import 'package:app_tareas/paginas/pagina_principal/pantalla_mediana.dart';
import 'package:app_tareas/paginas/pagina_principal/pantalla_pequena.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
/*
¿Que haremos?
Cargar tres pantallas diferentes segun la medida de la pantalla:
  1. pantalla pequeña: movil (ampliada <600)
  2. pantalla mediana: tablet (600 <= ampliada <1200)
  3. pantalla grande: escritorio (ampliada >=1200)
Cada pantalla tendrá un botón para navegar a la siguiente pantalla.
==================================================
Sabemos que podemos obtener la anchura de la pantalla con:
MediaQuery.of(context).size.width donde da la anchura de la pantalla.
==================================================

If ternarias: condicion ? valorSiTrue : valorSiFalse - valorSiFalse puede ser otra if ternaria.

Saber Orientacion:
MediaQuery.of(context).orientation == Orientation.portrait // true si es vertical
MediaQuery.of(context).orientation == Orientation.landscape // true si es horizontal
==================================================
Saber tipo de dispositivo:
kIsWeb // true si es web
Platform.isIOS // true si es iOS
Platform.isAndroid // true si es Android
Platform.isWindows // true si es Windows
Platform.isLinux // true si es Linux
Platform.isMacOS // true si es MacOS
==================================================
*/

class MainApp extends StatelessWidget {
  final bool dispositivoEsWeb = kIsWeb;

  const MainApp({super.key});

  @override
  Widget build(context) {
    double medida = MediaQuery.of(context).size.width;
    print(medida);
    print('Dispositivo es web: $dispositivoEsWeb');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: medida < 600
          ? appMobil()
          : medida < 1200
          ? appTablet()
          : appDesktop(),
    );
  }
}

Widget appMobil() {
  return PantallaPequena();
}

Widget appTablet() {
  return PantallaMediana();
}

Widget appDesktop() {
  return PantallaGrande();
}
