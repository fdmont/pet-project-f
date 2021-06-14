
import 'package:flutter/material.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({Key key}) : super(key: key);

  @override
  _TodayPageState createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hoy"),
    ),
      body: Container(
        padding: EdgeInsets.all(5.0),
      ),
    );
  }
}
