import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    // changeStatusBarLight();
    this._appBarTitle = TextField(
      autofocus: true,
      controller: _filter,
      decoration: InputDecoration(hintText: 'Search...'),
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
        this.searchInputFocus = true;
      } else {
        this._searchIcon = Icon(Icons.search);
        this._appBarTitle = Text('Search Example');
        this.searchInputFocus = false;
      }
    });
  }

  Widget _buildCustomAppBar(BuildContext context) {
    return AppBar(
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
      backgroundColor: Theme.of(context).backgroundColor,
      centerTitle: true,
      title: _appBarTitle,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: _searchIcon,
        onPressed: _searchPresed,
      ),
    );
  }

  // keyboar visibility
  bool _keyboardVisible(BuildContext context) {
    return !(MediaQuery.of(context).viewInsets.bottom == 0.0);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: _buildCustomAppBar(context),
        resizeToAvoidBottomInset: true,
        body: Center(
            child: this.searchInputFocus
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        size: 40.0,
                      ),
                      Container(
                          width: 180.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Añadir o buscar paradas',
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('en esta parada',
                                      style: TextStyle(color: Colors.white))
                                ],
                              ),
                            ],
                          )),
                    ],
                  )
                : Container(
                    child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 20.0,
                              right: 10.0,
                              left: 10.0,
                              bottom: 20.0,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Puntos de partida y de llegada',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 24.0,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              // TODO: convertir en un widget reutilizable todo el Row
                              Row(
                                children: [
                                  Container(
                                    width: size.width,
                                    height: 65.0,
                                    color:
                                        Theme.of(context).dialogBackgroundColor,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          right: 13.0, left: 10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.home_filled,
                                            color:
                                                Theme.of(context).accentColor,
                                            size: 30.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 15.0),
                                            child: Text(
                                              'Punto de partida (p. ej., almacén)',
                                              style: TextStyle(
                                                fontSize: 13.0,
                                                color: Theme.of(context)
                                                    .primaryTextTheme
                                                    .bodyText1
                                                    .color,
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          TextButton(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                right: 8.0,
                                                left: 8.0,
                                              ),
                                              child: Text(
                                                'Establecer',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            style: ButtonStyle(
                                                shape:
                                                    MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                                side: BorderSide(
                                                  width: 0.8,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            )),
                                            onPressed: () {},
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              // TODO: convertir en un widget reutilizable todo el Row
                              Row(
                                children: [
                                  Container(
                                    width: size.width,
                                    height: 65.0,
                                    color:
                                        Theme.of(context).dialogBackgroundColor,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          right: 13.0, left: 10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.flag,
                                            color:
                                                Theme.of(context).accentColor,
                                            size: 30.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 15.0),
                                            child: Text(
                                              'Punto de llegada (p. ej., casa)',
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Theme.of(context)
                                                      .primaryTextTheme
                                                      .bodyText1
                                                      .color),
                                            ),
                                          ),
                                          Spacer(),
                                          TextButton(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                right: 8.0,
                                                left: 8.0,
                                              ),
                                              child: Text(
                                                'Establecer',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            style: ButtonStyle(
                                                shape:
                                                    MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.0),
                                                  side: BorderSide(
                                                      width: 0.8,
                                                      color: Colors.grey)),
                                            )),
                                            onPressed: () {},
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 30.0,
                              right: 10.0,
                              left: 10.0,
                              bottom: 20.0,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Paradas',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 24.0),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          CustomSemiImput(
                            leftIcon: Icons.place,
                            colorLeftIcon: Theme.of(context).accentColor,
                            height: 65.0,
                            backgroundColor:
                                Theme.of(context).dialogBackgroundColor,
                            borderRadius: 0.0,
                            text: 'Ballivian, Centro, Santa Cruz de la ',
                            rightIcon: Icons.navigate_next,
                            colorText: Theme.of(context)
                                .primaryTextTheme
                                .bodyText1
                                .color,
                          ),
                          CustomSemiImput(
                            leftIcon: Icons.place,
                            colorLeftIcon: Theme.of(context).accentColor,
                            height: 65.0,
                            backgroundColor:
                                Theme.of(context).dialogBackgroundColor,
                            borderRadius: 0.0,
                            text: 'Ramada, Distrito 11',
                            rightIcon: Icons.navigate_next,
                            colorText: Theme.of(context)
                                .primaryTextTheme
                                .bodyText1
                                .color,
                            hintText: 'Centro',
                            colorHintText: Theme.of(context)
                                .primaryTextTheme
                                .bodyText2
                                .color,
                          ),
                          CustomSemiImput(
                            leftIcon: Icons.place,
                            colorLeftIcon: Theme.of(context).accentColor,
                            height: 65.0,
                            backgroundColor:
                                Theme.of(context).dialogBackgroundColor,
                            borderRadius: 0.0,
                            text: 'Presiona para añadir una parada',
                            colorText: Theme.of(context)
                                .primaryTextTheme
                                .bodyText2
                                .color,
                          )
                        ],
                      )
                    ],
                  ))));
  }
}
