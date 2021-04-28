import 'package:flutter/material.dart';

class EditDirectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Text(
                    'Listo',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                    ),
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
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'La Ramada, Condominio',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23.0,
                              color: Theme.of(context).primaryTextTheme.bodyText1.color
                            )
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Parque Urbano',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                              color: Theme.of(context).primaryTextTheme.bodyText1.color
                            )
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
                              color: Theme.of(context).primaryTextTheme.bodyText2.color
                            )
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
                        color: Theme.of(context).primaryTextTheme.bodyText2.color
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
                        color: Theme.of(context).primaryTextTheme.bodyText1.color
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Icon(Icons.navigate_next, size: 26.0,)
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
                        color: Theme.of(context).primaryTextTheme.bodyText1.color
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
    );
  }
}