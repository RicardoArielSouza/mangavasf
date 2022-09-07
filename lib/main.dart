// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

//Imports do firebase
import 'package:sqflite/sqflite.dart';

import 'package:mangavasf/ajuda.dart';
import 'package:mangavasf/contato.dart';
import 'package:mangavasf/informacoes.dart';
import 'package:mangavasf/pragas.dart';
import 'package:mangavasf/produtosFormulados.dart';
import 'classeAgronomica.dart';
import 'classificacaoAmbiental.dart';
import 'classificacaoToxicologica.dart';
import 'formulacao.dart';
import 'ingredientesAtivos.dart';
import 'lmrs.dart';
import 'loading.dart';
import 'modoDeAcao.dart';

Future<void> main() async {
  //Iniciando o sqlite

  runApp(
    MaterialApp(
      title: 'Named Routes',
      initialRoute: '/',
      routes: {
        //Quando navegar para "/" rote, construir a Tela Inicial
        '/loading': (context) => LoadingPage(),
        '/': (context) => HomePage(),
        '/produtosFormulados': (context) => ProdutosFormuladosPage(),
        '/ingredientesAtivos': (context) => IngredientesAtivosPage(),
        '/pragas': (context) => PragasPage(),
        '/classeAgronomica': (context) => ClasseAgronomicaPage(),
        '/classificacaoAmbiental': (context) => ClassificacaoAmbientalPage(),
        '/classificacaoToxicologica': (context) =>
            ClassificacaoToxicologicaPage(),
        '/modoDeAcao': (context) => ModoDeAcaoPage(),
        '/formulacao': (context) => FormulacaoPage(),
        '/lmrs': (context) => LMRSPage(),
        '/informacoes': (context) => InformacoesPage(),
        '/contato': (context) => ContatoPage(),
        '/ajuda': (context) => AjudaPage(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0), //Tamanho da header
        child: AppBar(
          //Icon menu
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 35,
          ),

          title: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'MANGOVASF',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          letterSpacing: 5,
                        ),
                      ),
                      Text(
                        'Defensivos Agrícolas',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/mangovasficon.png',
                  fit: BoxFit.contain,
                  height: 82,
                ),
              ],
            ),
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
          ),

          elevation: 5, //Sombreamento da Header
          backgroundColor:
              Color.fromARGB(255, 203, 236, 184), //Background color da header
        ),
      ),
      backgroundColor: Color(0xFFF6F7F5), //Cor do background da tela principal
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: GridView.count(
          crossAxisCount: 2, //Quantidade itens por linha
          children: <Widget>[
            //Criar novos cards do menu principal
            //MyMenu(title: "NomeDoCard", icon: Icons."NomeDoIcon", iconColor: Colors."Cor")
            MyMenu(
              title: "Produtos Formulados",
              img: Image.asset('assets/images/produtos_formulados.png'),
              index: 1,
            ),
            MyMenu(
                title: "Ingredientes Ativos",
                img: Image.asset('assets/images/ingredientes_ativos.png'),
                index: 2),
            MyMenu(
              title: "Pragas",
              img: Image.asset('assets/images/pragas.png'),
              index: 3,
            ),
            MyMenu(
              title: "Classe Agronômica",
              img: Image.asset('assets/images/classe_agronomica.png'),
              index: 4,
            ),
            MyMenu(
              title: "Classificação Ambiental",
              img: Image.asset('assets/images/classificacao_ambiental.png'),
              index: 5,
            ),
            MyMenu(
              title: "Classificação Toxicológica",
              img: Image.asset('assets/images/classificacao_toxicologica.png'),
              index: 6,
            ),
            MyMenu(
              title: "Modo de Ação",
              img: Image.asset('assets/images/modo_de_acao.png'),
              index: 7,
            ),
            MyMenu(
              title: "Formulação",
              img: Image.asset('assets/images/formulacao.png'),
              index: 8,
            ),
            MyMenu(
              title: "LMRs",
              img: Image.asset('assets/images/lmrs.png'),
              index: 9,
            ),
          ],
        ),
      ),
      drawer: NavigationDrawer(),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        color: Color(0xFFF6F7F5),
        width: double.infinity,
        padding: EdgeInsets.only(top: 50.0, bottom: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height:
                  70, //Tamanho do header do sidebar (Manga e Mangovasf - Defensivos Agrícolas)
              decoration: BoxDecoration(
                //shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/mangovasficon.png')), //DecorationImage
              ), //BoxDecoration
            ), //Container
            Text(
              "MANGOVASF",
              style: TextStyle(
                  color: Color(0xFF000000), fontSize: 20, letterSpacing: 5),
            ),
            Text(
              "Defensivos Agrícolas",
              style: TextStyle(
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
          ],
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        color: Color(0xFFF6F7F5),
        child: Wrap(
          //runSpacing: 16,
          children: [
            const Divider(
              color: Colors.black54,
            ),
            ListTile(
              //Caso queira adicionar icon
              //leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              //Caso queira adicionar icon
              //leading: const Icon(Icons.home_outlined),
              title: const Text('Produtos Formulados'),
              onTap: () {
                Navigator.pushNamed(context, '/produtosFormulados');
              },
            ),
            ListTile(
              //Caso queira adicionar icon
              //leading: const Icon(Icons.home_outlined),
              title: const Text('Ingredientes Ativos'),
              onTap: () {
                Navigator.pushNamed(context, '/ingredientesAtivos');
              },
            ),
            ListTile(
              //Caso queira adicionar icon
              //leading: const Icon(Icons.home_outlined),
              title: const Text('Pragas'),
              onTap: () {
                Navigator.pushNamed(context, '/pragas');
              },
            ),
            ListTile(
              //Caso queira adicionar icon
              //leading: const Icon(Icons.home_outlined),
              title: const Text('Classe Agronômica'),
              onTap: () {
                Navigator.pushNamed(context, '/classeAgronomica');
              },
            ),
            ListTile(
              //Caso queira adicionar icon
              //leading: const Icon(Icons.home_outlined),
              title: const Text('Classificação Ambiental'),
              onTap: () {
                Navigator.pushNamed(context, '/classificacaoAmbiental');
              },
            ),
            ListTile(
              //Caso queira adicionar icon
              //leading: const Icon(Icons.home_outlined),
              title: const Text('Classificação Toxicológica'),
              onTap: () {
                Navigator.pushNamed(context, '/classificacaoToxicologica');
              },
            ),
            ListTile(
              //Caso queira adicionar icon
              //leading: const Icon(Icons.home_outlined),
              title: const Text('Modo de Ação'),
              onTap: () {
                Navigator.pushNamed(context, '/modoDeAcao');
              },
            ),
            ListTile(
              //Caso queira adicionar icon
              //leading: const Icon(Icons.home_outlined),
              title: const Text('Formulação'),
              onTap: () {
                Navigator.pushNamed(context, '/formulacao');
              },
            ),
            ListTile(
              //Caso queira adicionar icon
              //leading: const Icon(Icons.home_outlined),
              title: const Text('LMRs'),
              onTap: () {
                Navigator.pushNamed(context, '/lmrs');
              },
            ),
            const Divider(
              color: Colors.black54,
            ),
            ListTile(
              //Caso queira adicionar icon
              //leading: const Icon(Icons.home_outlined),
              title: const Text('Informações'),
              onTap: () {
                Navigator.pushNamed(context, '/informacoes');
              },
            ),
            ListTile(
              //Caso queira adicionar icon
              //leading: const Icon(Icons.home_outlined),
              title: const Text('Contato'),
              onTap: () {
                Navigator.pushNamed(context, '/contato');
              },
            ),
            ListTile(
              //Caso queira adicionar icon
              //leading: const Icon(Icons.home_outlined),
              title: const Text('Ajuda'),
              onTap: () {
                Navigator.pushNamed(context, '/ajuda');
              },
            ),
          ],
        ),
      );
}

class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.img, this.index});
  //OBSERVAR DEPOIS COMO COMO COLOCAR REQUIRED
  final String? title; //? Permite ser nulo
  final Image? img;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFE6F1DF), //Cor do card

      child: InkWell(
        onTap: () {
          selectedItem(context, index!);
        },
        splashColor:
            Color.fromARGB(255, 159, 209, 130), //Cor que aparece quando clica
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                child: img, //imagem retorna em substituição do icone
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 10, bottom: 15), //Padding entre a imagem e title
              ),
              Text(
                title!,
                style: new TextStyle(
                  fontSize: 15.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProdutosFormuladosPage(),
      ));
      break;

    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => IngredientesAtivosPage(),
      ));
      break;

    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PragasPage(),
      ));
      break;

    case 4:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ClasseAgronomicaPage(),
      ));
      break;

    case 5:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ClassificacaoAmbientalPage(),
      ));
      break;

    case 6:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ClassificacaoToxicologicaPage(),
      ));
      break;

    case 7:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ModoDeAcaoPage(),
      ));
      break;

    case 8:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => FormulacaoPage(),
      ));
      break;

    case 9:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => LMRSPage(),
      ));
      break;
  }
}
