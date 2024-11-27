import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  const Questao(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    // Há um erro quando utiliza o Widget Container apenas com um width defindo, pois é preferível utilizar o widget SizedBox quando deseja adicionar espaços em branco em um layout.
    // https://dart.dev/tools/diagnostic-messages?utm_source=dartdev&utm_medium=redir&utm_id=diagcode&utm_content=sized_box_for_whitespace#sized_box_for_whitespace
    // Ao adicionar outras propriedades, como um margin, funciona normal.
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
