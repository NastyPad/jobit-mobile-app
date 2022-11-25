import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rejectedFeedbackApplicant extends StatelessWidget {
  late String feedback;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Feedback: "),
      actions: [
        TextFormField(
          decoration: InputDecoration(),
          onSaved: (value){
            feedback = value!;
          },
          validator: (value){
            if (value!.isEmpty){
              return "Fill this field";
            }
          },
        ),
        TextButton(
            onPressed: (){
              Navigator.of(context).pop();
              Navigator.of(context).pop();
            },
            child: Text(
              'Send',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent
              ),
            )
        ),
      ],
    );
  }
}
