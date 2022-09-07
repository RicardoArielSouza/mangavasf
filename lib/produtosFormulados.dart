import 'package:flutter/material.dart';

import 'main.dart';

class ProdutosFormuladosPage extends StatelessWidget {
  const ProdutosFormuladosPage({super.key});

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
          //Row 1 -- 20% da tela
          Expanded(
            flex: 4,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "#8d4383",
              ),
            ),
          ),
          //Row 1 -- 20% da tela
          Expanded(
            flex: 4,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "#8d4383",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
