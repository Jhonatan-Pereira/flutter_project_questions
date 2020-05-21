import 'package:flutter/material.dart';
main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  
  void responder() {
    print('Pergunta respondida');
  }

  final List<String> perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: () {
                print('respota 2');
              },
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: () => print('resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}