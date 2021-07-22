import 'package:flutter/material.dart';

class Reloj extends StatelessWidget {
  //const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 300.0,
      //color: Colors.black,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          aro(300),
          aro(150),
          hora(),
          minuto(),
          Positioned(
            top: 0,
            child: Container(
              height: 15.0,
              width: 3.0,
              color: Colors.black,
            ),
          ),
          Positioned(
              top: 285,
              child: Container(
                height: 15.0,
                width: 3.0,
                color: Colors.black,
              )),
          Positioned(
              top: 150,
              right: 285,
              child: Container(
                height: 3.0,
                width: 15.0,
                color: Colors.black,
              )),
          Positioned(
              top: 150,
              right: 0,
              child: Container(
                height: 3.0,
                width: 15.0,
                color: Colors.black,
              )),
        ],
      ),
    );
  }

  Positioned minuto() {
    return Positioned(
      top: 35,
      child: Container(
        width: 3.0,
        height: 130,
        color: Colors.purple,
      ),
    );
  }

  Positioned hora() {
    return Positioned(
      right: 65.0,
      child: Container(
        width: 100.0,
        height: 3.0,
        color: Colors.green,
      ),
    );
  }

  Container aro(ancho) {
    double radio = ancho / 2;
    return Container(
        width: ancho,
        height: ancho,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(radio),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black, offset: Offset(5, 4), blurRadius: 10.0),
              BoxShadow(
                  color: Colors.white.withOpacity(0.9),
                  offset: Offset(-5, -4),
                  blurRadius: 10.0)
            ]));
  }
}
