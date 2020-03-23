import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const TITLE = 'Controle Pais e Professores';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: TITLE,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double pixelRatio = MediaQuery.of(context).devicePixelRatio;
    double px = 1 / pixelRatio;

    BubbleStyle styleSomebody = BubbleStyle(
      nip: BubbleNip.leftTop,
      color: Colors.white,
      elevation: 1 * px,
      margin: BubbleEdges.only(top: 8.0, right: 50.0),
      alignment: Alignment.topLeft,
    );
    BubbleStyle styleMe = BubbleStyle(
      nip: BubbleNip.rightTop,
      color: Color.fromARGB(255, 225, 255, 199),
      elevation: 1 * px,
      margin: BubbleEdges.only(top: 8.0, left: 50.0),
      alignment: Alignment.topRight,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('${MyApp.TITLE}'),
      ),
      body: Container(
        color: Colors.yellow.withAlpha(64),
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: [
            Bubble(
              alignment: Alignment.center,
              color: Color.fromARGB(255, 212, 234, 244),
              elevation: 1 * px,
              margin: BubbleEdges.only(top: 8.0),
              child: Text('HOJE', style: TextStyle(fontSize: 10)),
            ),
            Bubble(
              style: styleSomebody,
              child: Text('Olá Diana, tudo bem? Quero falar a respeito do seu filho Mauricio.'),
            ),
            Bubble(
              style: styleMe,
              child: Text('Olá, boa tarde. O que houve?'),
            ),
            Bubble(
              style: styleSomebody,
              child: Text('Venho notado que ele vem faltando bastante. '),
            ),
            Bubble(
              style: styleSomebody,
              margin: BubbleEdges.only(top: 2.0),
              nip: BubbleNip.no,
              child: Text('O que está acontecendo?'),
            ),
            Bubble(
              style: styleMe,
              child: Text('Faz 2 semanas que ele está com febre. Estamos no hospital'),
            ),
            Bubble(
              style: styleMe,
              nip: BubbleNip.no,
              margin: BubbleEdges.only(top: 2.0),
              child: Text('Previsão de melhora para o próximo mês.'),
            ),
            Bubble(
              style: styleMe,
              nip: BubbleNip.no,
              margin: BubbleEdges.only(top: 2.0),
              child: Text('Obrigada pela preocupação!'),
            ),
            Bubble(
              style: styleSomebody,
              nip: BubbleNip.no,
              margin: BubbleEdges.only(top: 2.0),
              child: Text('Por nada!'),
            ),
            Bubble(
              style: styleSomebody,
              nip: BubbleNip.no,
              margin: BubbleEdges.only(top: 2.0),
              child: Text('Tentamos sempre que possível, manter o contato com os pais, a fim de alavancar o desempenho dos filhos.'),
            ),
            Bubble(
              style: styleMe,
              nip: BubbleNip.no,
              margin: BubbleEdges.only(top: 2.0),
              child: Text('Sim, entendi.'),
            ),
            Bubble(
              style: styleMe,
              nip: BubbleNip.no,
              margin: BubbleEdges.only(top: 2.0),
              child: Text('Obrigada. Alguma outra novidade, seguimos em contato. Boa tarde!'),
            ),
          ],
        ),
      ),
    );
  }
}