

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(
          child: Text("App-Task", style: TextStyle(
          color: Colors.blue
      ),
          ),
        ),
      ),
      body:   _cuerpo(),
      floatingActionButton: _botonParaAgregarTareas(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.white,

    );
  }


  Widget _cuerpo(){

    return Column(
      children: [
          ListView(
            children: [
              ListView()
            ]
          )
      ],

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

