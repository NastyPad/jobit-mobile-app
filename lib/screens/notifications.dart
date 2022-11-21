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
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: true,
        backgroundColor: Colors.amber.shade600,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical, shrinkWrap:true ,
          itemCount:20, itemBuilder: (BuildContext context, int position) {
        return Padding(
          padding: EdgeInsets.fromLTRB(20,5,20,5),
          child: Material(
            borderRadius: BorderRadius.circular(18.0),
            elevation: 2,
            child: ListTile(
              contentPadding: EdgeInsets.fromLTRB(20,10,20,10),
              title: Column(
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text('10/10/2022',
                        style: TextStyle(color: Colors.black54,
                            fontWeight: FontWeight.normal,fontSize: 10),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.fromLTRB(0,10,0,10) ,
                      child: Text(
                          'Tu anuncio "desarrollador back end" recibió un nuevo postulante',
                          style: TextStyle(color: Colors.amber,
                              fontWeight: FontWeight.bold,fontSize: 18)
                      ),
                    )
                  ]
              ),
              subtitle: Text(
                  'Jose Díaz está interesado en el puesto',
                  style: TextStyle(color: Colors.black54,
                      fontWeight: FontWeight.normal,fontSize: 15)
              ),

              trailing:
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
                  'Ver',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
        );
        //  return  getListTile('Tu anuncio "desarrollador back end" recibió un nuevo postulante',
        //          'Jose Díaz está interesado en el puesto','Ver detalles');
      }
      )

    );
  }
/*
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
*/

}
