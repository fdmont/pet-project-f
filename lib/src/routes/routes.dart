

import 'package:flutter/material.dart';
import 'package:pet_project_flutter/src/pages/HomePage.dart';
import 'package:pet_project_flutter/src/pages/next_7days_page.dart';
import 'package:pet_project_flutter/src/pages/profile_page.dart';
import 'package:pet_project_flutter/src/pages/today_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder>{
    '/' : (BuildContext context) => HomePage(),
    'hoy' : (BuildContext context) => TodayPage(),
    ProfilePage.id :(context) => ProfilePage(),
    Next7DaysPage.id : (context) => Next7DaysPage()

  };

}