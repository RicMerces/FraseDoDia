import 'package:flutter/material.dart';

void main() {
  runApp(FraseDoDia());
}

class FraseDoDia extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<FraseDoDia> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Frase do dia'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png'),
              const Text(
                'Clique abaixo para gerar uma frase',
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Nova Frase',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.all(20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
