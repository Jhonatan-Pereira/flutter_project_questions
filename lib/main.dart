import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState((){
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }
  final List<Map<String, Object>> perguntas = [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Azul', 'Branco']
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Cachorro', 'Gato', 'Papagaio']
    },
  ];


  @override
  Widget build(BuildContext context) {

    List<Widget> respostas = [];
    for(String textoResp in perguntas[_perguntaSelecionada]['respostas']){
      respostas.add(Resposta(textoResp, _responder));
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto']),
            ...respostas,
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}