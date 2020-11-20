import 'package:flutter/material.dart';
import 'dart:convert';
List<Servicios> serviciosFromJson(String str)=>
    List<Servicios>.from(json.decode(str).map((x)=> Servicios.fromJson(x)));
class Servicios {

  String idServicio;
  String nombreServicio;
  String descripcion;
  double costo;

  Servicios({
    this.idServicio,
    this.nombreServicio,
    this.descripcion,
    this.costo});


  Servicios.fromJson(Map<String, dynamic> json) {

    idServicio = json['idServicio'];
    nombreServicio = json['nombreServicio'];
    descripcion = json['descripcion'];
    costo = json['costo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['idServicio'] = this.idServicio;
    data['nombreServicio'] = this.nombreServicio;
    data['descripcion'] = this.descripcion;
    data['costo'] = this.costo;
    return data;
  }
}