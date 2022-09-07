import 'package:flutter/material.dart';
import 'package:mangavasf/telacomparativo.dart';

import 'main.dart';

class LMRSPage extends StatelessWidget {
  const LMRSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/images/lmr.png',
                    width: 180,
                  ),
                ),
                Container(
                  width: 210,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'LMRs por Ingrediente ativo',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 0.0, top: 8.0, right: 0.0, bottom: 0.0),
            child: Container(
              color: Color.fromARGB(255, 251, 248, 248),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => TelaComparativo())),
                    child: Container(
                      width: 210,
                      height: 80,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Comparativo LMRs',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'assets/images/comparativo.png',
                      width: 180,
                    ),
                  )
                ],
              ),
            ),
          ),
          Paises('Brasil',
              'https://www.curitiba.pr.leg.br/atividade-parlamentar/legislacao/imagens/bandeira-do-brasil.png/image'),
          Paises('União Europeia',
              'https://cdn-icons-png.flaticon.com/512/206/206593.png'),
          Paises('Reino Unido',
              'https://cdn-icons-png.flaticon.com/512/555/555417.png'),
          Paises('Estados Unidos',
              'https://imagepng.org/wp-content/uploads/2017/05/bandeira-dos-estados-unidos-eua.png'),
          Paises('Japão',
              'https://www.jornalboanoite.com.br/wp-content/uploads/2020/04/1200px-Flag_of_Japan.svg_.png'),
        ],
      ),
    );
  }
}

class Paises extends StatelessWidget {
  final String nomePais;
  final String imgPais;

  const Paises(this.nomePais, this.imgPais, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 0.0, top: 8.0, right: 0.0, bottom: 0.0),
      child: Container(
        color: Color.fromARGB(255, 251, 248, 248),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 210,
              height: 80,
              alignment: Alignment.centerLeft,
              child: Text(
                nomePais,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            Container(
              width: 80,
              height: 80,
              alignment: Alignment.centerRight,
              child: Image.network(
                imgPais,
              ),
            )
          ],
        ),
      ),
    );
  }
}
