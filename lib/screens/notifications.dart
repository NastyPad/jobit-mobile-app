import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/notifications_details.dart';

class Notifications extends StatefulWidget {
  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child:Container(
      padding: EdgeInsets.all(20),
      child: Column(
          children: [
            SizedBox(
                height: 100*10,
                child: ListView.builder(scrollDirection: Axis.vertical, shrinkWrap:true ,
                    itemCount:10, itemBuilder: (BuildContext context, int position) {
                      return  getListTile('Tu anuncio recibió un nuevo postulante',
                          'Programador de aplicaciones móviles','Ver');
                    }
                )
            ),
          ]
      ))
    );
  }

  SizedBox getListTile(title,subtitle,textbutton){
    return SizedBox(
        height:100,
        child:Column(children:<Widget> [
          Material(
            elevation: 8,
            borderRadius: BorderRadius.circular(18.0),
            shadowColor: Colors.black26,
            child:
            ListTile(

              title:
              Text(title,
                style: TextStyle(color: Colors.amber,
                    fontWeight: FontWeight.bold),),
              subtitle: Row(
                children: <Widget>[

                  Text(subtitle),

                  Spacer(),

                  ElevatedButton(
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
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 15)
        ],)

    );
  }

}
