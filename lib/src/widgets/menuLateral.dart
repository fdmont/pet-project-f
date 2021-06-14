import 'package:flutter/material.dart';
import 'package:pet_project_flutter/src/widgets/lista_opciones_menu.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Expanded(
                  child: FlutterLogo(),
                ),
                FlatButton(
                    child: Text("App Task"),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    }),
                SizedBox(
                  height: 10.0,
                )
              ],
            ),
            decoration: BoxDecoration(color: Colors.amber),
          ),
          listaOpcionesMenu(),
        ],
      ),
    );
  }



}
