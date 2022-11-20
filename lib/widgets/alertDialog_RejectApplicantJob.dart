import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/widgets/alertDialog_RejectedApplicantFeedback.dart';

class rejectApplicantConfirm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Are you sure to reject ?"),
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
              showDialog(
                context: context,
                builder: (BuildContext context){
                  return rejectedFeedbackApplicant();
                },
              );
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
