import 'package:flutter/material.dart';
import 'package:flutter_road_circuit/pages/home_page.dart';
import 'package:flutter_road_circuit/widgets/start_end_route_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Road Circuit',
      theme: ThemeData(
        splashFactory: InkRipple.splashFactory
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/start-end-page': (context) => StartEndRoutePage(),
      },
    );
  }
}
