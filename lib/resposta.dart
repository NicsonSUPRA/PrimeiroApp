import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() atResponse;

  Resposta(this.texto, this.atResponse);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
      child: Text(
        texto,
        style: TextStyle(color: Colors.black),
      ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple[700]
        ),
      onPressed: atResponse,
      ),
    );
  }
}