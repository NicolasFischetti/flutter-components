import 'package:flutter/material.dart';

import 'package:flutter_component/src/providers/menu_provider.dart';

import 'package:flutter_component/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _lista()
    );
  }

  Widget _lista() {

   // print(menuProvider.opciones);

  return FutureBuilder(
    future: menuProvider.cargarData(),
    initialData: [],
    builder: ( context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
        children: _listaItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {

        }
      );

      opciones..add(widgetTemp)
              ..add(Divider());
    });

    return opciones;
  }
}