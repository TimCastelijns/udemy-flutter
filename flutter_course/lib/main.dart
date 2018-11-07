import 'package:flutter/material.dart';

import './product_manager.dart';

void main() => runApp(A());

class A extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.cyan,
            accentColor: Colors.deepOrangeAccent),
        home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: ProductManager(),
        ),
      );
}
