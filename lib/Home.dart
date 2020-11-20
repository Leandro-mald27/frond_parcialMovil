import 'package:barbershop1/Formularios/FromConsultaServicios.dart';
import 'package:flutter/material.dart';
import 'Formularios/FromServicios.dart';
import 'Formularios/FromEmpleado.dart';
class Home extends StatefulWidget{

  HomeState createState()=>HomeState();
}
class HomeState extends State<Home>{
  int _selectDrawerItem = 0;
  _getDrawerItemWidget(int pos){
    switch(pos){
      case 0: return formEmpleado();
      case 1: return JsonParseDemo();

    }

  }
  _onSelectItem(int pos){
    setState(() {
      _selectDrawerItem=pos;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('BARBER-SHOP')
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text('Leandro Maldonado'),
              accountEmail: Text('Leandromaldonado2704@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.brown,
                child: Text('L',style: TextStyle(fontSize: 40.0),),
              ),
            ),
            ListTile(
              title: Text('REGISTRAR SERVICIOS',style: TextStyle(color: Colors.black),),
              leading: Icon(Icons.book),
              selected: (0==_selectDrawerItem),
              onTap: (){
                _onSelectItem(0);

              },
            ),
            ListTile(
              title: Text('CONSULTAR SERVICIOS',style: TextStyle(color: Colors.black),),
              leading: Icon(Icons.list),
              selected: (0==_selectDrawerItem),
              onTap: (){
                _onSelectItem(1);

              },
            ),
            ListTile(
                title: Text('Logout',style: TextStyle(color: Colors.black)),
                leading: Icon(Icons.exit_to_app),
                selected: (5==_selectDrawerItem),
                onTap: (){
                  _onSelectItem(1);
                }
            )

          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}