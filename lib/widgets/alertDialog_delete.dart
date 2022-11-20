import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class deleteConfirm extends StatelessWidget {
  const deleteConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Are you sure to delete this ad?"),
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
