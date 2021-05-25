import 'package:flutter/material.dart';
import 'package:timer/pages/choose_location.dart';
import 'package:timer/pages/home.dart';
// import 'package:timer/pages/hom.dart';
import 'package:timer/pages/loading.dart';
import 'package:timer/pages/choose_location.dart';

void main() => runApp(MaterialApp(
      // home: Home(),
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));
