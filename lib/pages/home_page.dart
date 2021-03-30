
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
            child: Stack(
              children: [
                GoogleMap(
                  initialCameraPosition:
                      CameraPosition(target: LatLng(-17.751903, -63.216292)),
                  zoomControlsEnabled: false,
                  scrollGesturesEnabled: true,
                ),
                
                // Padding(
                //   padding: EdgeInsets.only(left: 30.0, right: 30.0),
                //   child: SafeArea(
                //     child: Container(
                //       width: double.infinity,
                //       height: 60.0,
                //       // color: Colors.red,
                //       child: TextField(
                //         decoration: InputDecoration(
                //           border: OutlineInputBorder(),
                //           filled: true,
                //           icon: Icon(Icons.menu, ),
                //           fillColor: Colors.red,
                //           hintText: 'Añadir o buscar paradas'
                //         ),
                //       ),
                //     ),
                //   ),
                // )

                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(icon: Icon(Icons.menu), onPressed: (){}),
                        // TextFormField(
                        //   decoration: InputDecoration(
                        //     labelText: 'Buscar'
                        //   ),
                        // )
                        Expanded(
                          child: GestureDetector(
                            onTap: () { print('aaaaaaaaaaa'); },
                            child: TextField(
                              enabled: false,
                              decoration: InputDecoration(
                                hintText: 'Añadir o buscar paradas'
                              ),
                            ),
                          ),
                        )
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


                    Column(
                      children: [
                        
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 15.0, top: 2.0),
                              child: Text(
                                '•',
                                style: TextStyle(
                                  fontSize: 55.0,
                                  color: Colors.white
                                ),
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
                                VerticalDivider(
                                  color: Colors.white
                                )
                              ],
                            ),
                          )
                        ),

                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 15.0, top: 2.0),
                              child: Text(
                                '•',
                                style: TextStyle(
                                  fontSize: 55.0,
                                  color: Colors.white
                                ),
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
                                VerticalDivider(
                                  color: Colors.white
                                )
                              ],
                            ),
                          )
                        ),

                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 15.0, top: 2.0),
                              child: Text(
                                '•',
                                style: TextStyle(
                                  fontSize: 55.0,
                                  color: Colors.white
                                ),
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
                                VerticalDivider(
                                  color: Colors.white
                                )
                              ],
                            ),
                          )
                        ),

                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 15.0, top: 2.0),
                              child: Text(
                                '•',
                                style: TextStyle(
                                  fontSize: 55.0,
                                  color: Colors.white
                                ),
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
              )
            )
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
