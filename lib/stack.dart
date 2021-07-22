import 'package:flutter/material.dart';
import './caja.dart';

class EjemploStack extends StatelessWidget {
//  const EjemploStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Align(
            alignment: Alignment.topCenter, child: Caja(Colors.blue, 1, 200.0)),
        Caja(Colors.red, 2, 100.0),
        Align(
            alignment: Alignment.bottomRight,
            child: Caja(Colors.yellow, 3, 50.0)),
      ],
    );
  }
}
