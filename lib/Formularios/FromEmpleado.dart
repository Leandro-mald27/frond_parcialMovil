import 'package:flutter/material.dart';




class formEmpleado extends StatefulWidget{
  @override
  formEmpleadoState createState()=> formEmpleadoState();

}



class formEmpleadoState extends State<formEmpleado>{
  final scaffelkey= new GlobalKey<ScaffoldState>();
  final formKey=new GlobalKey<FormState>();
  List combo=['Maculino', 'Femenino'];
  String comboValor;
  final TextEditingController _identificacion = TextEditingController();
  final TextEditingController _nombre = TextEditingController();
  final TextEditingController _apellido = TextEditingController();
  final TextEditingController _edad = TextEditingController();
  DateTime _fecha;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffelkey,
      appBar: AppBar(title: Text("Registro Empleado"),),
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
                      return 'Ingrese La Identificacion';
                    }
                    return null;
                  },
                  controller: _identificacion,
                  decoration: InputDecoration(
                    hintText: 'Identificacion',
                    labelText: "Identificacion",
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Ingrese El Nombre';
                    }
                    return null;
                  },
                  controller: _nombre,
                  decoration: InputDecoration(
                    hintText: 'Nombre Empleado',
                    labelText: "Nombre",
                  ),
                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Ingrese El Apellido';
                    }
                    return null;
                  },
                  controller: _apellido,
                  decoration: InputDecoration(
                    hintText: 'Apellido Empleado',
                    labelText: "Apellido",
                  ),
                ),
                DropdownButton(
                  hint: Text('Seleccione El Genero'),
                  value: comboValor,
                  onChanged: (value){
                    setState(() {
                      comboValor=value;
                    });
                  },
                  items: combo.map((value){
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Ingrese La Edad';
                    }
                    return null;
                  },
                  controller: _edad,
                  decoration: InputDecoration(
                    hintText: 'Edad',
                    labelText: "Edad",
                  ),
                ),
                SizedBox(height: 20.0,),
                RaisedButton(
                  child: Text('Fecha Nacimiento'),
                  onPressed: (){
                    showDatePicker(context: context, initialDate: DateTime.now(), 
                        firstDate: DateTime(1930), lastDate: DateTime(2021)).then((date){
                          setState(() {
                            _fecha=date;
                          });
                    });
                  },
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
