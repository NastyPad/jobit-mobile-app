import 'package:flutter/material.dart';

class plan extends StatelessWidget{
  String plantype;
  String price;
  plan(String this.plantype , this.price ){

  }
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
         Stack(
           children: [
             Container(
               color: Colors.blue,
             ),
             Column(
               children: [
                 Text(
                     this.plantype,
                     style: TextStyle(
                         color: Colors.white,
                         fontSize: 16.0,
                         backgroundColor: Colors.grey
                     )
                 ),
                 Text(
                     this.price,
                     style: TextStyle(
                       color: Colors.grey,
                       fontSize: 15.0,
                     )
                 )
               ],
             ),
           ],
         )

        ]
    );

    Future openDialog() =>
        showDialog(
            context: context,
            builder: (context) =>
                AlertDialog(
                  title: Text("Payment"),
                ));
  }
}