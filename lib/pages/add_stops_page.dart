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
  bool searchInputFocus = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._appBarTitle = TextField(
            autofocus: true,
            controller: _filter,
            decoration: InputDecoration(
              hintText: 'Search...'
            ),
          );

    this._searchIcon = Icon(Icons.close);
    this.searchInputFocus = true;
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    this._filter.dispose();
  }
  



  void _searchPresed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = Icon(Icons.close);
        this._appBarTitle = TextField(
          autofocus: true,
          controller: _filter,
          decoration: InputDecoration(hintText: 'Search...'),
        );
      } else {
        this._searchIcon = Icon(Icons.search);
        this._appBarTitle = Text('Search Example');
        this.searchInputFocus = false;
      }
    });
  }

  Widget _buildCustomAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: _appBarTitle,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: _searchIcon,
        onPressed: _searchPresed,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: _buildCustomAppBar(context),
        resizeToAvoidBottomInset: true,
        body: Center(
          child:  this.searchInputFocus ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on_rounded,
                size: 40.0,
              ),
              Container(
                width: 160.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Añadir o buscar paradas',
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    Text(
                      'en esta parada',
                      style: TextStyle(
                        color: Colors.white
                      )
                    )
                  ],
                )
              ),
            ],
          ) : Text('NASHE')

        ));
  }
}
