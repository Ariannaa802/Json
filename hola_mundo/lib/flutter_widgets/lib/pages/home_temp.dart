import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'opcion1',
    'opcion2',
    'opcion3',
    'opcion4',
    'opcion5',
    'opcion6'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componente Temporal'),
      ),
      body: ListView(children: _crearWidgets()),
    );
  }

  List<Widget> _crearWidgets() {
    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
        subtitle: Text('Subtitulo de la '+opt),
        leading: Icon(Icons.account_box_rounded),
        trailing: Icon(Icons.keyboard_arrow_right_outlined),
        onTap: (){},
      );
      lista..add(tempWidget)..add(Divider());

      //lista.add(tempWidget);
      //lista.add(Divider());
    }
    return lista;
  }
}