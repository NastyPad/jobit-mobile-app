import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class acceptApplicantConfirm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Are you sure you accept ?"),
      actions: [
        TextButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: Text(
                'Cancel',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red
              ),
            )
        ),
        TextButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: Text(
              'Accept',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent
              ),
            )
        )
      ],
    );
  }
}
