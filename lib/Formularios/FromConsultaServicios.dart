import 'package:barbershop1/Modelo/Servicios.dart';
import 'package:barbershop1/Servicios/ServicioService.dart';
import 'package:flutter/material.dart';

class JsonParseDemo extends StatefulWidget{
  JsonParseDemo(): super();
  @override
  _JsonParseDemoState createState() => _JsonParseDemoState();
}
class _JsonParseDemoState extends State<JsonParseDemo>{
  List<Servicios> _servicios;
  bool _loading;
  @override
  void initState() {

    super.initState();
    _loading=true;
    APISERVICE.getServicios().then((servicios){
      setState(() {
        _servicios=servicios;
      });

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_loading ? 'Loading...' : 'Servicios'),
      ),
      body: Container(
        color: Colors.white24,
        child: ListView.builder(
          itemCount: null == _servicios ? 0 : _servicios.length,
          itemBuilder: (context, index){
            Servicios servicios =_servicios[index];
            return ListTile(

              title: Text(servicios.idServicio),
              subtitle: Text("Codigo Servicio: " + servicios.nombreServicio.toString()),
            );
          }),
        ),
    );
  }

}



