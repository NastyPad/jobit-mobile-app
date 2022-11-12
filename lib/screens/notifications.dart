import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'notifications_details.dart';

class Notifications extends StatefulWidget {
  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  List<Notification> notifications=[];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.all(20),
          child:Expanded(
                    child: ListView.builder(scrollDirection: Axis.vertical, shrinkWrap:true ,
                        itemCount:10, itemBuilder: (BuildContext context, int position) {
                          return  getListTile('Tu anuncio "desarrollador back end" recibió un nuevo postulante',
                              'Jose Díaz está interesado en el puesto','Ver detalles');
                        }
                    )
                )),


    );
  }

  Card getListTile(title,subtitle,textbutton){
    return Card(
        elevation:8,
        shadowColor: Colors.black26,
        child: Container(
          padding: EdgeInsets.all(18),
          child: Column(

            children: [
              SizedBox(
              width: MediaQuery.of(context).size.width-40,
              child: Text(
              title,
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.amber,
              fontWeight: FontWeight.bold,fontSize: 18))
              ),
              SizedBox(height: 15),
              SizedBox(
              width: MediaQuery.of(context).size.width-40,
              child: Text(
             subtitle,
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black54,
              fontWeight: FontWeight.normal,fontSize: 15))
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      MaterialPageRoute route = MaterialPageRoute(builder: (_) => NotificationsDetails());
                      Navigator.push(context, route);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber, // Background color
                      onPrimary: Colors.white, // Text Color (Foreground color)
                    ),
                    child: Text(
                      textbutton,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),

          ]
    )));

  }


}
