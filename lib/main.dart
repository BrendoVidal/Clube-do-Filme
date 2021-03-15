import 'package:clube_do_filme/views/em_alta.dart';
import 'package:clube_do_filme/views/home.dart';
import 'package:clube_do_filme/views/login.dart';
import 'package:clube_do_filme/views/ranks.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.light(), home: Login(), routes: {
      '/home': (context) => Home(),
      '/ranks': (context) => Ranks(),
      '/alta': (context) => EmAlta(),
    });
  }
}
