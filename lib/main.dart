import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_road_circuit/pages/add_stops_page.dart';
import 'package:flutter_road_circuit/pages/edit_direction_page.dart';
import 'package:flutter_road_circuit/pages/home_page.dart';
import 'package:flutter_road_circuit/theme/custom_theme.dart';
import 'package:flutter_road_circuit/pages/start_end_route_page.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  //   statusBarBrightness: Brightness.light,
  //   statusBarIconBrightness: Brightness.dark
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Road Circuit',
      theme: CustomTheme.darkTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/start-end-page': (context) => StartEndRoutePage(),
        '/add-stops-page': (context) => AddStopsPage(),
        '/edit-direction': (context) => EditDirectionPage(),
      },
    );
  }
}
