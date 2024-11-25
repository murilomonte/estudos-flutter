import 'package:flutter/material.dart';

void main() {
  // Roda uma instância da classe 'PerguntasApp'
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  final List<String> perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?',
  ];

  // * Se a lista final 'perguntas' vai mudar, então o objeto criado não será constante
  PerguntaApp({super.key});

  // Indica que método abaixo sobrescreve o método herdado da classe StatelessWidget;
  @override
  // 'build' é um método da classe 'PerguntasApp' que retorna um 'Widget' e constrói a interface do app;
  // O método recebe como parâmetro um objeto 'BuildContext', que representa o endereço do widget na árvore de widgets.
  // Permite acessar informações do ambiente, como tema, localização ou dimensões, por meio da variável 'context';
  Widget build(BuildContext context) {
    // Retorna um widget que implementa o material design, oferencendo funcionalidades como: temas, gerenciamento de rotas, e mais.
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Perguntas'),
            ),
            body: Column(
              children: [
                Text(perguntas[0]),
                // ElevatedButton -> widget que gera um botão
                const ElevatedButton(onPressed: null, child: Text('Resposta 1')),
                const ElevatedButton(onPressed: null, child: Text('Resposta 2')),
                const ElevatedButton(onPressed: null, child: Text('Resposta 2')),
              ],
            )));
  }
}
