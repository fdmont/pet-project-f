import 'package:flutter/material.dart';
import 'package:pet_project_flutter/src/pages/HomePage.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App-Task',
        debugShowCheckedModeBanner: false,
        home: HomePage()
    );
  }
}
