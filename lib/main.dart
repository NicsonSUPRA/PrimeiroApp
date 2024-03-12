import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() {
  runApp(Perguntas());
  //nova versão no repositorio
}

class _PerguntasState extends State<Perguntas> {
  var index = 0;
  final List<Map<String, dynamic>> _perguntas = [
        {
          'texto': 'Qual sua idade?',
          'resposta': [18, 19, 20, 21]
        },
        {
          'texto': 'Onde você mora?',
          'resposta': ['Piauí', 'Maranhão', 'Ceará', 'Rio de Janeiro']
        },
        {
          'texto': 'Já almoçou hoje?',
          'resposta': [true, false]
        }
      ];
  

  void _response() {
    setState(() {
    if(index == _perguntas.length -1) {
      index = 0;
    } else {
      index++;
    }
    print('pergunta respondida');
    print(index);
      
    });
  }
  @override
    Widget build(BuildContext context) {


      List<Widget> resposta = [];

      for(dynamic textResp in _perguntas[index]['resposta']) {
        resposta.add(Resposta(textResp.toString(), _response));
      }
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
            backgroundColor: Color(0xFF42A5F5),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Questao(_perguntas[index]['texto']),
              // Resposta('Resposta 1', _response),
              // Resposta('Resposta 2', _response),
              // Resposta('Resposta 3', _response),
              ...resposta
            ],
            
          ),
        )
      );
  }
}

class Perguntas extends StatefulWidget {
  _PerguntasState createState() {
    return _PerguntasState();
  }
}

