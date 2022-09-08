import 'package:flutter/material.dart';

import 'main.dart';

class TelaComparativo extends StatefulWidget {
  const TelaComparativo({Key? key}) : super(key: key);

  @override
  State<TelaComparativo> createState() => _TelaComparativoState();
}

class _TelaComparativoState extends State<TelaComparativo> {
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
          Container(
            height: 70,
            padding: EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(style: BorderStyle.none)),
                suffixIcon: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 81, 142, 48),
                ),
                fillColor: Color.fromARGB(255, 229, 232, 226),
                filled: true,
                // icon: Icons.search,
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TelaComparativo())),
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
                Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Paises('BR', 'assets/images/BR.png'),
                      Paises('UE', 'assets/images/UE.png'),
                      Paises('RU', 'assets/images/RU.png'),
                      Paises('EUA', 'assets/images/EUA.png'),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Substancias('Azoxistrobina', '6,0', '4,0', '0,7', '2,0'),
                    Substancias('Azoxistrobina', '6,0', '4,0', '0,7', '2,0'),
                    Substancias('Azoxistrobina', '6,0', '4,0', '0,7', '2,0'),
                    Substancias('Azoxistrobina', '6,0', '4,0', '0,7', '2,0'),
                    Substancias('Azoxistrobina', '6,0', '4,0', '0,7', '2,0'),
                    Substancias('Azoxistrobina', '6,0', '4,0', '0,7', '2,0'),
                    Substancias('Azoxistrobina', '6,0', '4,0', '0,7', '2,0'),
                    Substancias('Azoxistrobina', '6,0', '4,0', '0,7', '2,0'),
                    Substancias('Azoxistrobina', '6,0', '4,0', '0,7', '2,0'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Substancias extends StatelessWidget {
  final String nomeSubstancia;
  final String valorBR;
  final String valorUE;
  final String valorRU;
  final String valorEUA;

  const Substancias(this.nomeSubstancia, this.valorBR, this.valorUE,
      this.valorRU, this.valorEUA,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(padding: EdgeInsets.all(8.0), child: Text(nomeSubstancia)),
          Text(valorBR),
          Text('| '),
          Text(valorUE),
          Text('| '),
          Text(valorRU),
          Text('| '),
          Text(valorEUA),
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
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.all(0.0),
              width: 60,
              height: 40,
              alignment: Alignment.topCenter,
              child: Text(
                nomePais,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              width: 40,
              height: 40,
              alignment: Alignment.topCenter,
              child: Image.asset(
                imgPais,
              ),
            )
          ],
        ),
      ),
    );
  }
}
