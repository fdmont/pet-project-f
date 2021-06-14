

import 'package:flutter/material.dart';

class Next7DaysPage extends StatefulWidget {

  static String id = "next7days";

  const Next7DaysPage({Key key}) : super(key: key);

  @override
  _Next7DaysPageState createState() => _Next7DaysPageState();
}

class _Next7DaysPageState extends State<Next7DaysPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Proximos 7 Días"),
      ),
    );
  }
}
