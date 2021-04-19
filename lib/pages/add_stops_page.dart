import 'package:flutter/material.dart';
import 'package:flutter_road_circuit/helpers/helpers.dart';
import 'package:flutter_road_circuit/widgets/custom_semi_input.dart';

class AddStopsPage extends StatefulWidget {
  @override
  _AddStopsPageState createState() => _AddStopsPageState();
}

class _AddStopsPageState extends State<AddStopsPage> {
  final TextEditingController _filter = TextEditingController();

  String _searchText = "";

  // names filtered by search text
  List names = [];

  // TODO: cambiar el icono para que se haga un autofocus cuando se 
  // se abra la pagina
  Icon _searchIcon = Icon(Icons.search);

  Widget _appBarTitle = Text('Search example');

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;




    void _searchPresed() {

      setState(() {
        if (this._searchIcon.icon == Icons.search) {
          this._searchIcon = Icon(Icons.close);
          this._appBarTitle = TextField(
            controller: _filter,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search...'
            ),
          );  
        } else {
          this._searchIcon = Icon(Icons.search);
          this._appBarTitle = Text('Search Example');
          
        }
      });

    }

    Widget _buildCustomAppBar(BuildContext context){
      return AppBar(
        centerTitle: true,
        title: _appBarTitle,
        automaticallyImplyLeading: false,
        // leading: IconButton(
        //   icon: _searchIcon,
        //   onPressed: _searchPresed,
        // ),
        actions: [
          IconButton(
            icon: _searchIcon,
            onPressed: _searchPresed,
          ) 
        ],
      );
    }

    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: _buildCustomAppBar(context),
        resizeToAvoidBottomInset: true,
        body: Center(
          child: Text('AddStopsPages'),
        )
    );
  }
}
