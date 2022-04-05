import 'package:flutter/material.dart';

void main() {
  runApp(FraseDoDia());
}

class FraseDoDia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Frase do dia'),
        ),
      ),
    );
  }
}
