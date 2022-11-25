import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/services/ad_service.dart';

class deleteConfirm extends StatelessWidget {
  String adId;

  deleteConfirm(this.adId);

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
            onPressed: () async {
              bool deleted=await AdService().deleteAd(adId);

              if(deleted)
              {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Ad deleted')));
              }
              else
              {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Failed to delete')));
              }

              Navigator.of(context).pop();
            },
            child: Text(
              'Delet',
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
