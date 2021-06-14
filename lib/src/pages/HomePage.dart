

import 'package:flutter/material.dart';
import 'package:pet_project_flutter/src/menu/menu_provider.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(
          child: Text("App-Task", style: TextStyle(
          color: Colors.white
      ),
          ),
        ),
      ),
      drawer: Drawer(
        child: _getListadoMenu(),
      ),
      //floatingActionButton: _botonParaAgregarTareas(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.white,

    );
  }


  Widget _getListadoMenu() {

    return FutureBuilder(
        future: menuProvider.cargarDataFromJsonFile(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
          return ListView(
            children: _listaOpciones(snapshot.data, context),
          );
        }

    );

  }


  List<Widget> _listaOpciones(List data, BuildContext context) {

    final List<Widget> opciones = [];

    data.forEach((element) {

      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: Icon(Icons.arrow_right_outlined),
        onTap: (){
          
          final route = MaterialPageRoute(
              builder: (context) =>HomePage()
          );

          Navigator.pushNamed(context, element(['ruta']));
          if(element(['ruta'])=="Hoy"){
            print("ok");
          }
        },
      );

      opciones..add(widgetTemp);

      
    });

    return opciones;

  }


 /* List<Widget> _listaItems(List<dynamic> data, BuildContext context ) {

    final List<Widget> opciones = [];


    data.forEach((opt) {

      final widgetTemp = ListTile(
        title: Text(opt['texto']),
       // leading: getIcon(opt['icon' ]),
        trailing: Icon(Icons.keyboard_arrow_right_outlined, color: Colors.blue),
        onTap: (){

          final route = MaterialPageRoute(
            /*builder:(context){
                return AlertPage();
              }*/
              builder: (context) => CardPage()
          );

          // Navigator.push( context, route); //sin nombre

          Navigator.pushNamed(context, opt['ruta']);
        },
      );

      opciones..add(widgetTemp)
        ..add(Divider());

    });

    return opciones;
  }*/

/*
  FloatingActionButton _botonParaAgregarTareas() {
    return FloatingActionButton(
      onPressed: () => {},
      tooltip: 'add Task',
      child: Icon(Icons.add),
    );
  }*/



}

