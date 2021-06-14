

import 'package:flutter/material.dart';
import 'package:pet_project_flutter/src/pages/HomePage.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder>{
    '/': (BuildContext context) =>HomePage(),

  };

}