import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_road_circuit/helpers/helpers.dart';
import 'package:flutter_road_circuit/widgets/custom_cupertino_action_sheeet.dart';
import 'package:flutter_road_circuit/widgets/custom_semi_input.dart';
import 'package:flutter_road_circuit/pages/start_end_route_page.dart';
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

    // change status bar
    changeStatusBarDark();

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
                  myLocationButtonEnabled: false,
                  myLocationEnabled: true,
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
                                child: CustomSemiImput(
                                  backgroundColor: Theme.of(context).backgroundColor,
                                  text: 'Añadir o buscar paradas',
                                  colorText: Theme.of(context).primaryTextTheme.bodyText2.color,
                                  onTapText: () {
                                    print('tap en el buscador palabra');
                                    Navigator.pushNamed(context, '/add-stops-page');
                                  },
                                  leftIcon: Icons.menu,
                                  colorLeftIcon: Colors.grey[600],
                                  onTapLeftIcon: () {
                                    print('tap en el icono de menu');
                                  },
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
                                              color: Theme.of(context).iconTheme.color,
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
                                                color: Theme.of(context).iconTheme.color)),
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
                color: Theme.of(context).backgroundColor,
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
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
                                            color: Theme.of(context).primaryTextTheme.bodyText1.color,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '0 min • 2 paradas',
                                        style: TextStyle(
                                            color: Theme.of(context).primaryTextTheme.bodyText2.color,
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
                                            onPressed: () {
                                              showCupertinoModalPopup(
                                                
                                                context: context,
                                                builder: (BuildContext context) => CustomCupertinoActionSheet());
                                            },
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
                                        color: Theme.of(context).primaryTextTheme.bodyText1.color, fontSize: 16.0),
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
                                        color: Theme.of(context).primaryTextTheme.bodyText1.color, fontSize: 16.0),
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
                                color: Theme.of(context).primaryTextTheme.bodyText1.color,
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
                                  VerticalDivider(color: Theme.of(context).primaryTextTheme.bodyText1.color)
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
