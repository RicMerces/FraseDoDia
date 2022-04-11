import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(FraseDoDia());
}

class FraseDoDia extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<FraseDoDia> {
  List<String> _frases = [
    'Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado.',
    'Imagine uma nova história para sua vida e acredite nela.',
    'Não espere por uma crise para descobrir o que é importante em sua vida.',
    'Acredite em si próprio e chegará um dia em que os outros não terão outra escolha senão acreditar com você.',
    'Pessimismo leva à fraqueza, otimismo ao poder.',
    'O otimismo é a fé em ação. Nada se pode levar a efeito sem otimismo.',
    'O pessimismo, depois de você se acostumar a ele, é tão agradável quanto o otimismo.',
    'O contrário do pessimismo raramente é o otimismo. O contrário do pessimismo, se não é a boa intenção de injetar força nos fracos, o que é bonito e faz bem, é quase sempre a idiota.',
  ];

  var _frase = 'Clique abaixo para gerar uma frase';

  void alterarFrase() {
    int sorteio = Random().nextInt(_frases.length);
    setState(() {
      _frase = _frases[sorteio];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Frase do dia'),
        ),
        body: Center(
            child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png'),
              Text(
                _frase,
                style: const TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              TextButton(
                onPressed: alterarFrase,
                child: const Text(
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
        )),
      ),
    );
  }
}
