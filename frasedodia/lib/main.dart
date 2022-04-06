import 'package:flutter/material.dart';

void main() {
  runApp(FraseDoDia());
}

class FraseDoDia extends StatelessWidget {
  List<String> texto = [
    'Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado.'
        'Imagine uma nova história para sua vida e acredite nela.'
        'Não espere por uma crise para descobrir o que é importante em sua vida.'
        'Acredite em si próprio e chegará um dia em que os outros não terão outra escolha senão acreditar com você.'
        'Pessimismo leva à fraqueza, otimismo ao poder.'
        'O otimismo é a fé em ação. Nada se pode levar a efeito sem otimismo.'
        'O pessimismo, depois de você se acostumar a ele, é tão agradável quanto o otimismo.'
        'O contrário do pessimismo raramente é o otimismo. O contrário do pessimismo, se não é a boa intenção de injetar força nos fracos, o que é bonito e faz bem, é quase sempre a idiota.'
  ];

  // String novaFrase(){
  //   setState(){

  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Frase do Dia'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            margin:
                const EdgeInsets.only(left: 10, right: 10, top: 60, bottom: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Image.asset('assets/logo.png'),
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fermentum ante magna, nec elementum augue pharetra ac. Aliquam erat volutpat. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Nova Frase',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
