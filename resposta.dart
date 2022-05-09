// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  // ignore: use_key_in_widget_constructors
  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onSurface: Colors.black,
          elevation: 80,
          shadowColor: Colors.black,
        ),
        child: Text(
          texto,
        ),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
