import 'package:flutter/material.dart';

class payment_detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Aún no eres PRemiun?'),
        Text('Publica anuncions in limites'),
        Text('Recibe la mayor cantidad de postulantes'),
        Text('Conoce nuestros planes'),

        Row(

          children: [
            SizedBox(height: 40,),
            Container(
                height: 60.0,
                width:60 ,
                color:Colors.black
            ),
            SizedBox(height: 40,),
            Container(
                height: 60.0,
                width:60 ,
                color:Colors.black
            ),
            SizedBox(height: 40,),
            Container(
              height: 60.0,
              width:60 ,
              color:Colors.black,

            ),

          ],

        )

      ],
    );
  }
}
