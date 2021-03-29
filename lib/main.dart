import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.4, // TODO: 0.7 cuando toque expandir
            child: GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: LatLng(-17.751903, -63.216292)),
              zoomControlsEnabled: false,
              scrollGesturesEnabled: true,
            ),
          ),

          Container(
            height: size.height * 0.6, // TODO: 0.3 cuando se toque expandir
            width: size.width,
            decoration: BoxDecoration(
              color: Color(0xff1f2022),
            ),
          )
        ],
      ),
    );
  }
}
