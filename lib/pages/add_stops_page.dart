import 'package:flutter/material.dart';
import 'package:flutter_road_circuit/helpers/helpers.dart';
import 'package:flutter_road_circuit/widgets/custom_semi_input.dart';


class AddStopsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    changeStatusBarLight();

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        toolbarHeight: 100.0,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).dialogBackgroundColor,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Container(
                  width: size.width * 0.7,
                  height: 50.0,
                  color: Colors.red,
                )
              ],
            )
            // CustomSemiImput(
            //   height: 10.0,
            //   text: 'Añadir o buscar paradas',
            //   backgroundColor: Color(0xff161719),
            //   colorText: Theme.of(context).primaryTextTheme.bodyText1.color,
            // ),    
          ],
        ),
        // flexibleSpace: Column(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     CustomSemiImput(
        //       text: 'Añadir o buscar paradas',
        //       backgroundColor: Color(0xff161719),
        //       colorText: Theme.of(context).primaryTextTheme.bodyText1.color,
        //     ),
        //   ],
        // ),
        
      ),
      body: SafeArea(
        child: Column(
          children: [
            // custom appbar with search input
            
            // Container(
            //   width: double.infinity,
            //   height: 100.0,
            //   color: Colors.grey,
            // )
          ],
        ),
      )
    );
  }
}