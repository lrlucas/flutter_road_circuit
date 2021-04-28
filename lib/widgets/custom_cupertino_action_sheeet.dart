import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomCupertinoActionSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            child: Text(
              'Borrar toda la ruta',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            onPressed: () {},
          ),
          CupertinoActionSheetAction(
            child: Text('Omitir optimizacion'),
            onPressed: () {},
          ),
          CupertinoActionSheetAction(
            child: Text('Cambiar el nombre de la ruta'),
            onPressed: () {},
          ),
          CupertinoActionSheetAction(
            child: Text('Compartir ruta'),
            onPressed: () {},
          )
        ],
        cancelButton: CupertinoActionSheetAction(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ),
    );
  }
}