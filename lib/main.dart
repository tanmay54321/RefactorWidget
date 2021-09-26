import 'package:flutter/material.dart';
import 'package:refactorwidget/refactor_widget.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DefaultInkWell(),
      ),
    );
  }
}

class DefaultInkWell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50.0,
        child: Center(
          child: InkWell(
            autofocus: false,
            hoverColor: Colors.red[100],
            focusColor: Colors.yellow,
            splashColor: Colors.purpleAccent,
            child: Text("click mi babe"),
            onTap: (){},
          ),
        ),
      ),
    );
  }
}
