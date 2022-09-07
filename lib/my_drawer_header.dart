// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF6F7F5), //Cor onde fica o titulo do sidebar
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 40.0),
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
  }
}
