import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_road_circuit/widgets/place_vehicle_action_sheet.dart';

class EditDirectionPage extends StatefulWidget {
  @override
  _EditDirectionPageState createState() => _EditDirectionPageState();
}

class _EditDirectionPageState extends State<EditDirectionPage> {
  int segmentControlGroupValue = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    child: Text(
                      'Listo',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
              // body
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Container(
                  width: size.width,
                  height: 120.0,
                  color: Theme.of(context).dialogBackgroundColor,
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('La Ramada, Condominio',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23.0,
                                    color: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyText1
                                        .color)),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Parque Urbano',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,
                                color: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText1
                                    .color,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'El Fuerte Centro',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                color: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText2
                                    .color,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 35.0, bottom: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'LAPSO DE TIEMPO',
                        style: TextStyle(
                          color: Theme.of(context)
                              .primaryTextTheme
                              .bodyText2
                              .color,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Container(
                width: size.width,
                height: 50.0,
                color: Theme.of(context).dialogBackgroundColor,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Notas',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Theme.of(context)
                              .primaryTextTheme
                              .bodyText1
                              .color,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.navigate_next,
                        size: 26.0,
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 38.0),
                child: Container(
                  width: size.width,
                  height: 50.0,
                  color: Theme.of(context).dialogBackgroundColor,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Prioridad',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Theme.of(context)
                                .primaryTextTheme
                                .bodyText1
                                .color,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: CupertinoSlidingSegmentedControl(
                          backgroundColor: Colors.grey[600],
                          groupValue: segmentControlGroupValue,
                          children: {
                            0: Text('ASAP'),
                            1: Text('Normal'),
                          },
                          onValueChanged: (int i) {
                            setState(() {
                              segmentControlGroupValue = i;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 0.0),
                child: Container(
                  width: size.width,
                  height: 50.0,
                  color: Theme.of(context).dialogBackgroundColor,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Tiempo en parada',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Theme.of(context)
                                .primaryTextTheme
                                .bodyText1
                                .color,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Text(
                          '1 min',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontSize: 17.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(top: 0.0),
                  child: Container(
                    width: size.width,
                    height: 50.0,
                    color: Theme.of(context).dialogBackgroundColor,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            'Place in Vehicle',
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Theme.of(context)
                                  .primaryTextTheme
                                  .bodyText1
                                  .color,
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Text(
                            'Back Left Shelf',
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 17.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (BuildContext context) =>
                        PlaceVehicleActionSheet(),
                  );
                },
              ),

              Padding(
                padding: EdgeInsets.only(top: 35.0, bottom: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'LAPSO DE TIEMPO',
                        style: TextStyle(
                          color: Theme.of(context)
                              .primaryTextTheme
                              .bodyText2
                              .color,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 0.0),
                child: Container(
                  width: size.width,
                  height: 50.0,
                  color: Theme.of(context).dialogBackgroundColor,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Hora más temp...',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Theme.of(context)
                                .primaryTextTheme
                                .bodyText1
                                .color,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Text(
                          'Cualquier hora',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontSize: 17.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 0.0),
                child: Container(
                  width: size.width,
                  height: 50.0,
                  color: Theme.of(context).dialogBackgroundColor,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Hora más tarde',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Theme.of(context)
                                .primaryTextTheme
                                .bodyText1
                                .color,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Text(
                          'Cualquier hora',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontSize: 17.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Container(
                  width: size.width,
                  height: 50.0,
                  color: Theme.of(context).dialogBackgroundColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: Text(
                          'Eliminar Parada',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.red,
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
      ),
    );
  }
}
