// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class Questao extends StatelessWidget {
  final String texto;

  // ignore: use_key_in_widget_constructors
  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(40),
      child: Text(
        texto,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
