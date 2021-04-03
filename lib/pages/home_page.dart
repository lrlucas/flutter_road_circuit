import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_road_circuit/widgets/start_end_route_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.4, // TODO: 0.7 cuando toque expandir
            child: Stack(
              children: [
                GoogleMap(
                  initialCameraPosition:
                      CameraPosition(target: LatLng(-17.751903, -63.216292)),
                  zoomControlsEnabled: false,
                  scrollGesturesEnabled: true,
                ),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: SafeArea(
                                child: Container(
                                  width: double.infinity,
                                  height: 45.0,
                                  decoration: BoxDecoration(
                                      color: Color(0xff1f2022),
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  child: Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 15.0, right: 10.0),
                                          child: InkResponse(
                                            child: Icon(
                                              Icons.menu,
                                              color: Colors.grey[600],
                                              size: 25.0,
                                            ),
                                            onTap: () {
                                              // TODO: abrir el menu lateral
                                              print('Tap en el icono de menu');
                                            },
                                          )),
                                      InkResponse(
                                        child: Text(
                                          'Añadir o buscar paradas',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                        onTap: () {
                                          // TODO: abrir la nueva pantalla para agregar rutas
                                          print('Tap en el buscador');
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: Container(
                            width: 120.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                                color: Color(0xff1f2022),
                                // color: Colors.red,
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Material(
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 15.0),
                                      child: InkResponse(
                                        child: Container(
                                            width: 40.0,
                                            height: 45.0,
                                            child: Icon(
                                              Icons.aspect_ratio,
                                              color: Colors.white60,
                                            )),
                                        onTap: () {
                                          print(
                                              'tap en boton de agrandar el mapa');
                                        },
                                      )),
                                  Spacer(),
                                  Padding(
                                      padding: EdgeInsets.only(right: 15.0),
                                      child: InkResponse(
                                        child: Container(
                                            width: 40.0,
                                            height: 45.0,
                                            child: Icon(Icons.gps_fixed,
                                                color: Colors.white60)),
                                        onTap: () {
                                          print(
                                              'tap en boton activar ubicacion gps');
                                        },
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
              height: size.height * 0.6, // TODO: 0.3 cuando se toque expandir
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0xff1f2022),
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    //TODO: este row necesita el evento de click
                    Material(
                      color: Colors.transparent,
                      child: InkResponse(
                        onTap: () {
                          print('tap en el menu');
                          Navigator.pushNamed(context, '/start-end-page');
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 20.0, left: 10.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'mié feb. 17',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '0 min • 2 paradas',
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 14.0),
                                      )
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 13.0, right: 10.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          TextButton(
                                            child: Text('Editar ruta'),
                                            onPressed: () {},
                                          ),
                                          TextButton(
                                            child: Icon(
                                              Icons.more_vert,
                                              color: Colors.white,
                                            ),
                                            style: ButtonStyle(
                                                padding:
                                                    MaterialStateProperty.all(
                                                        EdgeInsets.zero),
                                                minimumSize:
                                                    MaterialStateProperty.all(
                                                        Size(50, 30))),
                                            onPressed: () {},
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 10.0, top: 15.0),
                                    child: Icon(
                                      Icons.repeat,
                                      color: Theme.of(context).accentColor,
                                      size: 30.0,
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: 10.0, left: 10.0, top: 15.0),
                                  child: Text(
                                    'Viaje de ida y vuelta desde la ubicacion a...',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16.0),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 10.0, top: 15.0),
                                    child: Icon(
                                      Icons.query_builder,
                                      color: Theme.of(context).accentColor,
                                      size: 30.0,
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: 10.0, left: 10.0, top: 15.0),
                                  child: Text(
                                    'Iniciar ahora mismo',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16.0),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    //TODO: fin del row

                    Divider(
                      thickness: 1.0,
                      color: Colors.grey,
                    ),

                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10.0, right: 15.0, top: 2.0),
                              child: Text(
                                '•',
                                style: TextStyle(
                                    fontSize: 55.0, color: Colors.white),
                              ),
                            ),
                            Text(
                              'Ballivian, Centro, Santa Cruz de ..',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            )
                          ],
                        ),
                        Container(
                            height: 30,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  VerticalDivider(color: Colors.white)
                                ],
                              ),
                            )),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10.0, right: 15.0, top: 2.0),
                              child: Text(
                                '•',
                                style: TextStyle(
                                    fontSize: 55.0, color: Colors.white),
                              ),
                            ),
                            Text(
                              'Ballivian, Centro, Santa Cruz de ..',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            )
                          ],
                        ),
                        Container(
                            height: 30,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  VerticalDivider(color: Colors.white)
                                ],
                              ),
                            )),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10.0, right: 15.0, top: 2.0),
                              child: Text(
                                '•',
                                style: TextStyle(
                                    fontSize: 55.0, color: Colors.white),
                              ),
                            ),
                            Text(
                              'Ballivian, Centro, Santa Cruz de ..',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            )
                          ],
                        ),
                        Container(
                            height: 30,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  VerticalDivider(color: Colors.white)
                                ],
                              ),
                            )),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10.0, right: 15.0, top: 2.0),
                              child: Text(
                                '•',
                                style: TextStyle(
                                    fontSize: 55.0, color: Colors.white),
                              ),
                            ),
                            Text(
                              'Ballivian, Centro, Santa Cruz de ..',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Optimizar ruta'),
        icon: Icon(Icons.repeat),
        onPressed: () {},
      ),
    );
  }
}
