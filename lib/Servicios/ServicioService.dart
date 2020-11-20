import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:barbershop1/Modelo/Servicios.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;




class APISERVICE {

  static final String BaseUrl = 'https:192.168.1.254//:44368/api/SERVICIOS';
  static Future<List<Servicios>> getServicios() async{
    var url = BaseUrl;
   try{
     final response= await http.get(url);
     if(response.statusCode==200){
       final List<Servicios> servicios= serviciosFromJson(response.body);

       return servicios;
     }else{

       return null;
     }

   }catch(e){
     return null;
   }
  }

}