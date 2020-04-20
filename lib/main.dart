import 'package:flutter/material.dart';
import 'package:give_app_flutter/Activites/SplashScreen.dart';

import 'Activites/HomeScreen.dart';
import 'Activites/LoginClass.dart';
import 'Activites/RegisterClass.dart';

void main() => runApp(new MaterialApp(
    theme:
    ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: routes));



var  routes =  <String ,WidgetBuilder>{
  '/RegisterCliant': (BuildContext context) => new RegisterCliant(),
  '/LoginCliant' : (BuildContext context) => new LoginCliant(),
  '/HomeTabBar' : (BuildContext context) => new HomeTabBar()
};

