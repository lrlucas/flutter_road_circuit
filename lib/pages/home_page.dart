import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatelessWidget {
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
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 10.0),
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
                                  color: Colors.grey[600], fontSize: 14.0),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(top: 13.0, right: 10.0),
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
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.zero),
                                      minimumSize: MaterialStateProperty.all(
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
                        padding: EdgeInsets.only(left: 10.0, top: 15.0),
                        child: Icon(
                          Icons.repeat,
                          color: Theme.of(context).accentColor,
                          size: 30.0,
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0, left: 10.0, top: 15.0),
                        child: Text(
                          'Viaje de ida y vuelta desde la ubicacion a...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                          ),
                        ),
                      )
                    ],
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 15.0),
                        child: Icon(
                          Icons.query_builder,
                          color: Theme.of(context).accentColor,
                          size: 30.0,
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0, left: 10.0, top: 15.0),
                        child: Text(
                          'Iniciar ahora mismo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                          ),
                        ),
                      )
                    ],
                  ),

                  Divider(
                    thickness: 1.0,
                    color: Colors.grey,
                  ),


                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 15.0, top: 2.0),
                              child: Text(
                                '•',
                                style: TextStyle(
                                  fontSize: 60.0,
                                  color: Colors.white
                                ),
                              ),
                            ),
                            Text(
                              'Ballivian, Centro, Santa Cruz de ..',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0
                              ),
                            )
                          ],
                        ),
                        VerticalDivider(color: Colors.white,),

                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 15.0, top: 2.0),
                              child: Text(
                                '•',
                                style: TextStyle(
                                  fontSize: 60.0,
                                  color: Colors.white
                                ),
                              ),
                            ),
                            Text(
                              'Ballivian, Centro, Santa Cruz de ..',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0
                              ),
                            )
                          ],
                        ),

                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 15.0, top: 2.0),
                              child: Text(
                                '•',
                                style: TextStyle(
                                  fontSize: 60.0,
                                  color: Colors.white
                                ),
                              ),
                            ),
                            Text(
                              'Ballivian, Centro, Santa Cruz de ..',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0
                              ),
                            )
                          ],
                        ),

                       


                      ],
                    ),
                  )

                  



                ],
              )
            )
        ],
      ),
    );
  }
}
