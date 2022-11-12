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
            child: Text('Yes')
        ),
        TextButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: Text('No')
        )
      ],
    );
  }
}
