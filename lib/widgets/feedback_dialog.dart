import 'package:flutter/material.dart';

class FeedbackDialog {
  final txtName = TextEditingController();
  final txtPrority = TextEditingController();

  //isNew
  //--> false = edit
  //--> true = new
  Widget buildDialog(BuildContext context, int idNotification, String text) {

    return AlertDialog(
        title: Text(text),
        content: SingleChildScrollView(
            child:Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    maxLines: 8,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Escribe aquí...',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //guardar feedback
                      Navigator.pop(context, AlertDialog);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber, // Background color
                      onPrimary: Colors.white, // Text Color (Foreground color)
                    ),
                    child: Text(
                      'Enviar',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
          )))
    );
  }
}