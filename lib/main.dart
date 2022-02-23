
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:milanbaros/register.dart';

import 'AnaMerkez.dart';
import 'AnaSayfa.dart';

import 'home.dart';
import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',

    routes: {
      'register': (context) => Register(),
      'login': (context) => Login(),
      'home': (context) => MyHome(),
      'AnaSayfa': (context) => AnaSayfa(),
      'AnaMerkez': (context) => AnaMerkez(),

    },)
  );
}
