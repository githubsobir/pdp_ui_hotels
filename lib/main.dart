import 'package:flutter/material.dart';

import 'myhomepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(home: MyHomePage(),
    routes: {
      MyHomePage.id:(context) => MyHomePage(),
      },
    );
  }
}
