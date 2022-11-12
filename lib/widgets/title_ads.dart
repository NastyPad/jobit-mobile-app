import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(30),
        child: Text(
          'MY ADS',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.amberAccent
          ),
        ),
        padding: EdgeInsets.only(top: 10, right: 80, left: 80, bottom: 10),

        decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 7.0,
                  offset: Offset(0.0, 4)
              )
            ],

            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0)
        )
    );
  }
}