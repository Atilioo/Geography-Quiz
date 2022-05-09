// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Resultado extends StatelessWidget {
  final int score;
  final void Function() quandoReiniciaApp;

  // ignore: use_key_in_widget_constructors
  Resultado(this.score, this.quandoReiniciaApp);

  String get fraseDeCadaResultado {
    if (score < 5) {
      return ('Tente melhorar, Você acertou = $score');
    } else if (score < 10) {
      return 'Razoável, Você acertou = $score';
    } else if (score <= 23) {
      return 'Parabéns, Você acertou todas = $score';
    }
    return 'Voce terminou';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseDeCadaResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        ElevatedButton(
          onPressed: quandoReiniciaApp,
          child: Text(
            'Voltar Ao Inicio?',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
