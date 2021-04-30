import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaceVehicleActionSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: CupertinoActionSheet(
        title: Row(
          children: [
            Text(
              'Borrar',
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
            Spacer(),
            Text(
              'Place in Vehicle',
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
            Spacer(),
            Text(
              'Listo',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        actions: [
          CupertinoActionSheetAction(
            child: CupertinoSlidingSegmentedControl(
              backgroundColor: Colors.grey[600],
              groupValue: 0,
              children: {
                0: Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: TextButton(onPressed: () {}, child: Text('Front')),
                ),
                1: TextButton(onPressed: () {}, child: Text('Middle')),
                2: TextButton(onPressed: () {}, child: Text('Back')),
              },
              onValueChanged: (int i) {},
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
