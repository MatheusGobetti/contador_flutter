import 'package:flutter/material.dart'; //Pacote de design do material (feito principalmente para android)

void main() {
  runApp(MaterialApp(
      //Material design utilizado
      theme: ThemeData(primarySwatch: Colors.purple),
      home: HomePage())); //O tema deixa a aplicação toda de determinada forma
}

class HomePage extends StatefulWidget {
  //A classe homepage tem que "extender" por meio do statefulwidget
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  void increment() {
    //Função para incrementar um valor
    count++;
    setState(
        () {}); //Essa propriedade "atualiza" a aplicação em tempo real quando o usuário faz algo
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Esqueleto da aplicação
      appBar: AppBar(
        //Barrinha que fica em cima (de menu)
        title: Text("Meu primeiro App"), //Título que fica dentro da barrinha
      ),
      body: Center(
          //Corpo da aplicação que está alinhado no centro
          child: Text(
        "Contador\n$count", //Conteúdo em texto que fica no centro
        textAlign: TextAlign.center,
      )),
      floatingActionButton: FloatingActionButton(
        //Botãozinho do lado inferior direito da aplicação
        child: Icon(Icons
            .add), //Ícone que fica dentro do botãozinho. Dá pra colocar vários tipos de ícones diferentes que já vem no flutter
        onPressed: () {
          //Ao clicar no botão...
          increment(); //A função de incrementar acontece!
        },
      ),
    );
  }
}
