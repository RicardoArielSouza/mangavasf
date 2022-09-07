import 'package:flutter/material.dart';

import 'main.dart';

class ClassificacaoAmbientalPage extends StatelessWidget {
  const ClassificacaoAmbientalPage({super.key});

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
      body: Column(
        children: <Widget>[
          //Container 1
          Expanded(
            child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.yellow,
                height: 100,
                alignment: Alignment.center,
                child: Text(
                  "Produtos Formulados por Classificação Ambiental",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                )),
          ),
          //Container 2
          Expanded(
            child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.red,
                alignment: Alignment.center,
                child: Text("Classificação Ambiental:")),
          ),
          //Container 3
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text(
                "Classe Agronômica:",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
