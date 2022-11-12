import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/widgets/subscriptions/plan_item.dart';

class planPremiun extends StatelessWidget{

  @override
  Widget build(BuildContext){
    return Column(

      children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Text(
                   "Sé un usuario\nPremiun",
                   style: TextStyle(
                     color: Colors.amber,
                     fontSize: 35.0,
                   )
               )
             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
              Image.network("https://cdn1.vectorstock.com/i/1000x1000/98/85/boy-young-programming-icon-cartoon-style-vector-32359885.jpg",
              width: 180.0,),
               Text(
                   "Aparece en las\nprimeras\nposiciones de\n profesionales",
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 20.0,
                   )
               )
             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               plan("Plan Mensual", "60 dolares"),
               Text(
                   "Sé recomendado a\n empresas de acuerdo a tus\nhabilidades y talento",
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 20.0,
                   )
               )
             ],
           ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.amber,
                ),
                onPressed:(){

                }, child:
            Text("ADQUIRIR" ,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                )                ))
          ],
        )
         ],

    );
  }

}