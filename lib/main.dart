import 'package:dektoonapp/fav.dart';
import 'package:dektoonapp/index.dart';
import 'package:dektoonapp/profile.dart';
import 'package:flutter/material.dart';
import 'package:dektoonapp/login.dart';
import 'package:dektoonapp/register.dart';




void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'fav': (context) => MyFav(),
      'profile': (context) => ProfileUI(),
      'index':(context) => IndexPage(),

    },
  ));
}