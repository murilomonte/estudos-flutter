import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() {
  // Roda uma instância da classe 'PerguntasApp'
  runApp(const PerguntaApp());
}

// Classe utilizada pare gerenciar o estado de PerguntaApp.
// Essa classe herda a classe genérica State, que é fornecida pelo flutter para gerenciar estados de widgets Stateful.
// O <PerguntaApp> indica que essa classe de estado está relacionada ao widget chamado PerguntaApp;
class _PerguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;

  void _responder() {
    // setState notifica ao Flutter que o estado foi alterado manualmente.
    // O bloco abaixo define como o estado será mudado.
    // Após isso, o flutter irá reconstruir o widget que dependem desse estado.
    setState(() {
      _perguntaSelecionada++;
    });
  }

  // Como a interface irá mudar conforme o estado, ela deve estar dentro dessa classe;
  // Indica que método abaixo sobrescreve o método herdado da classe StatelessWidget;
  @override
  // 'build' é um método da classe 'PerguntasApp' que retorna um 'Widget' e constrói a interface do app;
  // O método recebe como parâmetro um objeto 'BuildContext', que representa o endereço do widget na árvore de widgets.
  // Permite acessar informações do ambiente, como tema, localização ou dimensões, por meio da variável 'context';
  Widget build(BuildContext context) {
    // Uma lista de Map, onde cada chave é do tipo String e seu respectivo valor é um Object
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão']
      },
      {
        'texto': 'Qual é o seu instrutor favorito?',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro']
      },
    ];
    // Retorna um widget que implementa o material design, oferencendo funcionalidades como: temas, gerenciamento de rotas, e mais.
    return MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Perguntas'),
            ),
            body: Column(
              children: [
                // Não pode ser um widget const pois a pergunta pode mudar.
                // O valor da chave 'texto' é foi definido como Object. Para mudar isso, deve-se fazer um cast dizendo ao dart que o valor obtido é uma String. Com 'as String'
                Questao(perguntas[_perguntaSelecionada]['texto'] as String),
                // ElevatedButton -> widget que gera um botão
                // Não pode ser const pois o botão vai mudar.
                Resposta('Resposta 1', _responder),
                Resposta('Resposta 2', _responder),
                Resposta('Resposta 3', _responder),
              ],
            )));
  }
}

// Este widget é Stateful, ou seja, possui estado que pode ser alterado manualmente e internamente;
// O flutter não monitora mudanças de estado, mas será notificado sempre que o método setState for chamado.
// Quando o estado for alterado, e setState usado, o flutter reconstruirá o widget.
class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});
  @override
  State<PerguntaApp> createState() {
    return _PerguntaAppState();
  }
}
