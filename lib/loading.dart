import 'package:flutter/material.dart';
import 'dart:async';
import 'main.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/mangovasficon.png',
              fit: BoxFit.contain,
              height: 150,
            ),
            Text(
              'MANGOVASF',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 5.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            Text(
              'Defensivos Agrícolas',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
