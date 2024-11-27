import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelecao;

  const Resposta(this.texto, this.onSelecao, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onSelecao,
        // Para deixar o botão quadrado
        // style: ElevatedButton.styleFrom(
        //   shape: const RoundedRectangleBorder(
        //     borderRadius: BorderRadius.zero
        //   )
        // ),
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
