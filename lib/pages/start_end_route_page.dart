
import 'package:flutter/material.dart';
import 'package:flutter_road_circuit/widgets/custom_semi_input.dart';


class StartEndRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 12.0, right: 12.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // boton Cancelar
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Theme.of(context).primaryTextTheme.bodyText2.color
                        ),
                        child: Text('Cancelar'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Inicio de la ruta',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Theme.of(context).primaryTextTheme.bodyText1.color
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '¿Dónde y cúando empiezas a conducir?',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Theme.of(context).primaryTextTheme.bodyText2.color
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: CustomSemiImput(
                    backgroundColor: Color(0xff161719),
                    text: 'Usar la ubicacion actual',
                    colorText: Colors.white,
                    leftIcon: Icons.gps_fixed,
                    colorLeftIcon: Theme.of(context).accentColor,
                    rightIcon: Icons.navigate_next,
                    height: 53.0,
                    borderRadius: 5.0,
                    onTapText: () {
                      print('tap en el boton de texto 1');
                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: CustomSemiImput(
                    backgroundColor: Color(0xff161719),
                    text: 'Usar la ubicacion actual',
                    colorText: Theme.of(context).primaryTextTheme.bodyText2.color,
                    leftIcon: Icons.schedule,
                    colorLeftIcon: Theme.of(context).primaryTextTheme.bodyText2.color,
                    rightIcon: Icons.navigate_next,
                    height: 53.0,
                    borderRadius: 5.0,
                    onTapText: () {
                      print('tap en el boton de texto 2');
                    },
                  ),
                ),
                SizedBox(height: 50.0,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Fin de la ruta',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Theme.of(context).primaryTextTheme.bodyText1.color
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '¿Dónde termina tu ruta?',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Theme.of(context).primaryTextTheme.bodyText2.color
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: CustomSemiImput(
                    backgroundColor: Color(0xff161719),
                    text: 'Viaje de ida y vuelta',
                    hintText: 'Viaje de ida y vuelta desde la ubicacion',
                    colorHintText: Theme.of(context).primaryTextTheme.bodyText2.color,
                    colorText: Colors.white,
                    leftIcon: Icons.repeat,
                    colorLeftIcon: Theme.of(context).accentColor,
                    rightIcon: Icons.navigate_next,
                    height: 53.0,
                    borderRadius: 5.0,
                    onTapText: () {
                      print('tap en el boton de texto 3');
                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: CustomSemiImput(
                    backgroundColor: Color(0xff161719),
                    text: 'Establecer la hora de finalizacion',
                    colorText: Theme.of(context).primaryTextTheme.bodyText2.color,
                    leftIcon: Icons.schedule,
                    colorLeftIcon: Theme.of(context).primaryTextTheme.bodyText2.color,
                    rightIcon: Icons.navigate_next,
                    height: 53.0,
                    borderRadius: 5.0,
                    onTapText: () {
                      print('tap en el boton de texto 4');
                    },
                  ),
                ),

                Spacer(),
                Divider(color: Colors.white),
                Row(
                  children: [
                    Expanded(
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tightFor(
                          width: double.infinity,
                          height: 50.0
                        ),
                        child: ElevatedButton(
                          child: Text('Listo'),
                          onPressed: (){
                            print('tap en el boton de listo');
                          },
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      Text(
                        'Guardar como predeterminado',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white
                        ),
                      ),
                      Spacer(),
                      Switch.adaptive(
                        value: true,
                        onChanged: (bool value){}
                      )
                    ],
                  ),
                )


              ],
            )
          ),
        ),
      ),
    );
  }
}