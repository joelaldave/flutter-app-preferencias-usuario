import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
  static final PreferenciasUsuario _instancia =
      new PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPref() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  //Get y Set
  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int value) {
    _prefs.setInt('genero', value);
  }

  //Get y Set ColorSecundario
  get colorSec {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSec(bool value) {
    _prefs.setBool('colorSecundario', value);
  }

  //Get y Set NombreUsuario
  get nombreU {
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreU(String value) {
    _prefs.setString('nombreUsuario', value);
  }

  //Get y Set UltimaPag
  get ultimaP {
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaP(String value) {
    _prefs.setString('ultimaPagina', value);
  }
}
