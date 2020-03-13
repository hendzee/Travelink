import 'package:flutter/material.dart';
import 'package:equinox/equinox.dart' as eva;
import './screens/main_tab_screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return eva.EquinoxApp(
      title: 'Travelink',
      theme: eva.EqThemes.defaultLightTheme,
      debugShowCheckedModeBanner: false,
      home: eva.EqLayout(
        child: MainTabScreens(),
      ),
    );
  }
}
