import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resultado.dart';
import 'questionario.dart';
import 'resultado.dart';
//ignore_for_file: prefer_const_constructors

void main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a capital dos Estados Unidos?',
      'respostas': [
        {'texto': 'Washington', 'score': 10},
        {'texto': 'New York', 'score': 0},
        {'texto': 'Chicago', 'score': 0},
        {'texto': 'Oklahoma', 'score': 0},
      ],
    },
    {
      'texto': 'Qual é a capital da França?',
      'respostas': [
        {'texto': 'Montepellier', 'score': 0},
        {'texto': 'Marselha', 'score': 0},
        {'texto': 'Paris', 'score': 10},
        {'texto': 'Estrasburgo', 'score': 0},
      ],
    },
    {
      'texto': 'Qual é a capital do Japão?',
      'respostas': [
        {'texto': 'Osaka', 'score': 0},
        {'texto': 'Tóquio', 'score': 10},
        {'texto': 'Yokohama', 'score': 0},
        {'texto': 'Quioto', 'score': 0},
      ],
    },
    {
      'texto': 'Qual é a capital da Alemanha?',
      'respostas': [
        {'texto': 'Berlim', 'score': 10},
        {'texto': 'Düsseldorf', 'score': 0},
        {'texto': 'Frankfurt', 'score': 0},
        {'texto': 'Munique', 'score': 0},
      ],
    },
    {
      'texto': 'Qual é a capital do Brasil?',
      'respostas': [
        {'texto': 'São Paulo', 'score': 0},
        {'texto': 'Salvador', 'score': 0},
        {'texto': 'Rio de Janeiro', 'score': 0},
        {'texto': 'Brasília', 'score': 10},
      ],
    },
    {
      'texto': 'Qual é a capital de Portugal?',
      'respostas': [
        {'texto': 'Coimbra', 'score': 0},
        {'texto': 'Braga', 'score': 0},
        {'texto': 'Porto', 'score': 0},
        {'texto': 'Lisboa', 'score': 10},
      ],
    },
    {
      'texto': 'Qual é a capital da Inglaterra?',
      'respostas': [
        {'texto': 'Birmingham', 'score': 0},
        {'texto': 'Londres', 'score': 10},
        {'texto': 'Manchester', 'score': 0},
        {'texto': 'Nottingham', 'score': 0},
      ]
    },
    {
      'texto': 'Qual é a capital da Espanha?',
      'respostas': [
        {'texto': 'Bilbao', 'score': 0},
        {'texto': 'Saragoça', 'score': 0},
        {'texto': 'Madrid', 'score': 10},
        {'texto': 'Barcelona', 'score': 0},
      ]
    },
    {
      'texto': 'Qual é a capital da Australia?',
      'respostas': [
        {'texto': 'Sydney', 'score': 0},
        {'texto': 'Adelaide', 'score': 0},
        {'texto': 'Melbourne', 'score': 0},
        {'texto': 'Camberra', 'score': 10},
      ]
    },
    {
      'texto': 'Qual é a capital da Holanda?',
      'respostas': [
        {'texto': 'Lisse', 'score': 0},
        {'texto': 'Amsterdã', 'score': 10},
        {'texto': 'Haia', 'score': 0},
        {'texto': 'Utrecht', 'score': 0},
      ]
    },
    {
      'texto': 'Qual é a capital da Itália?',
      'respostas': [
        {'texto': 'Roma', 'score': 10},
        {'texto': 'Veneza', 'score': 0},
        {'texto': 'Turim', 'score': 0},
        {'texto': 'Milão', 'score': 0},
      ]
    },
    {
      'texto': 'Qual é a capital da Argentina?',
      'respostas': [
        {'texto': 'Ushuaia', 'score': 0},
        {'texto': 'Mendoza', 'score': 0},
        {'texto': 'Puerto Iguazú', 'score': 0},
        {'texto': 'Buenos Aires', 'score': 10},
      ]
    },
    {
      'texto': 'Qual é a capital da Africa do Sul?',
      'respostas': [
        {'texto': 'Kimberley', 'score': 0},
        {'texto': 'Durban', 'score': 0},
        {'texto': 'Pretória', 'score': 10},
        {'texto': 'Coffee Bay', 'score': 0},
      ]
    },
    {
      'texto': 'Qual é a capital do Canadá?',
      'respostas': [
        {'texto': 'Toronto', 'score': 0},
        {'texto': 'Vancouver', 'score': 0},
        {'texto': 'Montreal', 'score': 0},
        {'texto': 'Ottawa', 'score': 10},
      ]
    },
    {
      'texto': 'Qual é a capital do Urugaui?',
      'respostas': [
        {'texto': 'Montevidéu', 'score': 10},
        {'texto': 'Punta del Este', 'score': 0},
        {'texto': 'Carmelo', 'score': 0},
        {'texto': 'Punta del Diablo', 'score': 0},
      ]
    },
    {
      'texto': 'Qual é a capital do México?',
      'respostas': [
        {'texto': 'Acapulco', 'score': 0},
        {'texto': 'Cancún', 'score': 0},
        {'texto': 'Cidade do México', 'score': 10},
        {'texto': 'Teotihuacan', 'score': 0},
      ]
    },
    {
      'texto': 'Qual é a capital da Noruega?',
      'respostas': [
        {'texto': 'Geiranger', 'score': 0},
        {'texto': 'Olso', 'score': 10},
        {'texto': 'Flím', 'score': 0},
        {'texto': 'Bergen', 'score': 0},
      ]
    },
    {
      'texto': 'Qual é a capital da Islândia?',
      'respostas': [
        {'texto': 'Akranes', 'score': 0},
        {'texto': 'Selfoss', 'score': 0},
        {'texto': 'Stykkishólmur', 'score': 0},
        {'texto': 'Reykjavik', 'score': 10},
      ]
    },
    {
      'texto': 'Qual é a capital da China?',
      'respostas': [
        {'texto': 'Xangai', 'score': 0},
        {'texto': 'Pequim', 'score': 10},
        {'texto': 'Wuhan', 'score': 0},
        {'texto': 'Hangzhou', 'score': 0},
      ]
    },
    {
      'texto': 'Qual é a capital da Coreia do Sul?',
      'respostas': [
        {'texto': 'Changwon', 'score': 0},
        {'texto': 'Daejeon', 'score': 0},
        {'texto': 'Ulsan', 'score': 0},
        {'texto': 'Seul', 'score': 10},
      ]
    },
    {
      'texto': 'Qual é a capital da Grécia?',
      'respostas': [
        {'texto': 'Tessalônica', 'score': 0},
        {'texto': 'Olímpia', 'score': 0},
        {'texto': 'Atenas', 'score': 10},
        {'texto': 'Tebas', 'score': 0},
      ]
    },
    {
      'texto': 'Qual é a capital da Turquia?',
      'respostas': [
        {'texto': 'Istambul', 'score': 0},
        {'texto': 'Ancara', 'score': 10},
        {'texto': 'Antália', 'score': 0},
        {'texto': 'Esmirna', 'score': 0},
      ]
    },
    {
      'texto': 'Qual é a capital da Suiça?',
      'respostas': [
        {'texto': 'Berna', 'score': 10},
        {'texto': 'Zürich', 'score': 0},
        {'texto': 'Genebra', 'score': 0},
        {'texto': 'Lucerna', 'score': 0},
      ]
    }
  ];

  void _responder(int score) {
    if (quantidadePerguntas) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += score;
      });
    }
  }

  void _reiniciaApp() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get quantidadePerguntas {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: quantidadePerguntas
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciaApp),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class PerguntasApp extends StatefulWidget {
  // ignore: annotate_overrides
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}
