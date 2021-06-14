import 'package:flutter/material.dart';
import 'package:pet_project_flutter/src/pages/HomePage.dart';
import 'package:pet_project_flutter/src/routes/routes.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App-Task Pet Project',
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: getApplicationRoutes(),
        onGenerateRoute: ( RouteSettings settings){ //ruta por defecto

          return MaterialPageRoute(builder: (BuildContext context) => HomePage() );
        }
    );
  }
}
