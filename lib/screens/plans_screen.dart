import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/widgets/subscriptions/plan_item.dart';

class plans extends StatelessWidget{

  @override
  Widget build(BuildContext){
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              fontSize: 25.0,
            )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            plan("Plan Semestral","270 dolares"),
            plan("Plan Trimestral","530 dolares"),
          ],
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
            plan("Plan Mensual","100 dolares"),
            ElevatedButton(
                style: TextButton.styleFrom(
                     backgroundColor: Colors.amber,
                  minimumSize: Size(150.0,90.0)
                ),
                onPressed:(){

                }, child:
                Text("ADQUIRIR" ,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    )                ))
          ]

        )
      ]

    );
  }

}