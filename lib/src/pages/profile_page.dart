import 'package:flutter/material.dart';
import 'package:pet_project_flutter/src/widgets/menuLateral.dart';


class ProfilePage extends StatefulWidget {

  static String id = 'products_page';

  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('profile'),
          ),
          drawer: MenuLateral(),
        )
    );
  }
}
