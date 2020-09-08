import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/share_pref/preferencias_usuario.dart';
import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = new PreferenciasUsuario();
  @override
  Widget build(BuildContext context) {
    prefs.ultimaP = HomePage.routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de ususario'),
        backgroundColor: (prefs.colorSec) ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('color secundario: ${prefs.colorSec}'),
          Divider(),
          Text('Genero : ${prefs.genero}'),
          Divider(),
          Text('Nombre Usuario: ${prefs.nombreU}'),
          Divider(),
        ],
      ),
    );
  }
}
