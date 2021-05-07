import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: CupertinoActionSheet(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Borrar"),
            SizedBox(
              width: 10,
            ),
            Text("Hora mas temprana"),
            Text("")
          ],
        ),
      ),
    );
  }
}
