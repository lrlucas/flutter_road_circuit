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
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     ElevatedButton(
          //       child: Text("Front"),
          //       onPressed: () {},
          //     ),
          //     ElevatedButton(
          //       child: Text("Front"),
          //       onPressed: () {},
          //     ),
          //     ElevatedButton(
          //       child: Text("Front"),
          //       onPressed: () {},
          //     ),
          //   ],
          // )
          CupertinoActionSheetAction(
            child: CupertinoSlidingSegmentedControl(
              backgroundColor: Colors.grey[600],
              groupValue: 0,
              children: {
                0: Text('Front'),
                1: Text('Front'),
                2: Text('Front'),
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
