import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mangavasf/ingredientesAtivos.dart';
import 'package:mangavasf/main.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  initState() {
    // at the beginning, all users are shown

    super.initState();

    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.of(context)
          .pushReplacement(CupertinoPageRoute(builder: (ctx) => HomePage()));
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/mangaLoading.png"),
              width: 180.0,
            ),
            Text('MANGOVASF',
                style: TextStyle(
                    letterSpacing: 5,
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0)),
            Text(
              'Defensivos Agrícolas',
              style: TextStyle(fontSize: 18.0),
            ),
            Container(
              padding: EdgeInsets.only(top: 40.0),
              child: SpinKitFadingCircle(
                color: Colors.grey,
                size: 50.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
