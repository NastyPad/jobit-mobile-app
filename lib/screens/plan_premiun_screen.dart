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
                     fontSize: 25.0,
                   )
               )
             ],
           ),
         ],

    );
  }

}