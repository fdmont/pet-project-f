
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class MenuProvider { //no se puede tener un constructor async

  List<dynamic> _opcionesMenu  = [];

  MenuProvider(){
    cargarDataFromJsonFile();
  }





  Future<List<dynamic>> cargarDataFromJsonFile() async {  //se espera hasta que el await responda antes de finalizar el constructor  , una funcion async retorna un Future

    final resp_json = await rootBundle.loadString('data_json/menu_opciones.json');

    Map dataMap = json.decode(resp_json);
    print(dataMap['rutas']);
    _opcionesMenu = dataMap['rutas'];

    return _opcionesMenu;
  }



}



final menuProvider = new  MenuProvider();