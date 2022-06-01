import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/HttpHelloView.dart';
import 'package:project/location.dart';
import 'package:project/sign_in_page.dart';
import 'package:project/welcome_page.dart';



void main()async{
  HttpOverrides.global = new MyHttpOverrides();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PostHome(),
  ));
}