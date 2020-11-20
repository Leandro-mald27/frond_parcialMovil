import 'package:flutter/material.dart';




class formServicio extends StatefulWidget{
  @override
  formServicioState createState()=> formServicioState();

}



class formServicioState extends State<formServicio>{
  final scaffelkey= new GlobalKey<ScaffoldState>();
  final formKey=new GlobalKey<FormState>();
  final TextEditingController _codigoServicio = TextEditingController();
  final TextEditingController _nombreServicio = TextEditingController();
  final TextEditingController _descripcion = TextEditingController();
  final TextEditingController _valor = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffelkey,
      appBar: AppBar(title: Text("Registro Servicios"),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Ingrese El Codigo Del Servicio';
                    }
                    return null;
                  },
                  controller: _codigoServicio,
                  decoration: InputDecoration(
                    hintText: 'Codigo Servicio',
                    labelText: "Servicio",
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Ingrese El Nombre Del Servicio';
                    }
                    return null;
                  },
                  controller: _nombreServicio,
                  decoration: InputDecoration(
                    hintText: 'Nombre Servicio',
                    labelText: "Nombre Servicio",
                  ),
                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Ingrese La Descripcion Del Servicio';
                    }
                    return null;
                  },
                  controller: _descripcion,
                  decoration: InputDecoration(
                    hintText: 'Descripcion Servicio',
                    labelText: "Descripcion",
                  ),
                ),
                SizedBox(height: 20.0,),

                TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Ingrese El Valor Del Servicio';
                    }
                    return null;
                  },
                  controller: _valor,
                  decoration: InputDecoration(
                    hintText: 'Valor Servicio',
                    labelText: "Valor",
                  ),
                ),


                SizedBox(height: 20.0,),
                RaisedButton(
                  child: Text("Registrar"),
                  onPressed: (){
                    final form= formKey.currentState;
                    if(form.validate()){
                      form.save();
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}
