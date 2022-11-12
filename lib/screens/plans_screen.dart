import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class plans extends StatelessWidget{

  @override
  Widget build(BuildContext){
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                "Aún no eres Premium?",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 25.0,
                )
            )
          ],
        ),
        Text(
            "Publica anuncios sin limites",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
            )
        ),
        Text(
            "Recibe la mayor cantidad de usuarios",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
            )
        ),
        Text(
            "Conoce nuestros Planes",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 15.0,
            )
        )

      ]

    );
  }

}