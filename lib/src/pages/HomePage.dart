

import 'package:flutter/material.dart';
import 'package:pet_project_flutter/src/widgets/List_view_home.dart';
import 'package:pet_project_flutter/src/widgets/menuLateral.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(
          child: Text("App-Task", style: TextStyle(
          color: Colors.white
      ),
          ),
        ),
      ),
      drawer: Drawer(
        child: MenuLateral(),
      ),
      body: ListViewHome(),
      floatingActionButton: _botonParaAgregarTareas(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.white,

    );
  }


  FloatingActionButton _botonParaAgregarTareas() {
    return FloatingActionButton(
      onPressed: () => {},
      tooltip: 'add Task',
      child: Icon(Icons.add),
    );
  }



}

