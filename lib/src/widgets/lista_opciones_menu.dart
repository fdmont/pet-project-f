

import 'package:flutter/material.dart';
import 'package:pet_project_flutter/src/pages/next_7days_page.dart';
import 'package:pet_project_flutter/src/pages/profile_page.dart';

class listaOpcionesMenu extends StatelessWidget {

  const listaOpcionesMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return _getListOpciones(context);
  }

 Widget _getListOpciones(BuildContext context) {

    return Column( children:[

        ListTile(
        leading: Icon(Icons.supervised_user_circle),
        title: Text('perfil'),
        onTap: ()=> Navigator.pushNamed(context, ProfilePage.id)
        ),
        ListTile(
          leading: Icon(Icons.supervised_user_circle),
          title: Text("hoy"),
          onTap: ()=> Navigator.pushNamed(context, "hoy"),
        ),
      ListTile(
        leading: Icon(Icons.supervised_user_circle),
        title: Text("proximos 7 dias"),
        onTap: ()=> Navigator.pushNamed(context, Next7DaysPage.id),
      ),
      ListTile(
        leading: Icon(Icons.supervised_user_circle),
        title: Text("proximos 30 dias"),
        onTap: ()=> Navigator.pushNamed(context, "hoy"),
      )
    ]);
 }


}
