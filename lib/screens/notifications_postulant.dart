import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/feedback_screen.dart';
import 'package:untitled/screens/notifications_details.dart';

class NotificationsPostulant extends StatefulWidget {
  @override
  State<NotificationsPostulant> createState() => _NotificationsPostulantState();
}

class _NotificationsPostulantState extends State<NotificationsPostulant> {

  List<Notification> notifications=[];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.all(20),
          child:Expanded(
                    child: ListView.builder(scrollDirection: Axis.vertical, shrinkWrap:true ,
                        itemCount:10, itemBuilder: (BuildContext context, int position) {
                          return Column(
                            children: [
                              getListTile2('Sigue intentando!',
                              'Recibe el feedback para que pueda mejorar sus habilidades','Más información'),
                              getListTile('Felicidades!',
                                  'Fue aceptado para el empleo de Desarrollador Backend C# en Claro')
                            ],
                          );
                             }
                    )
                )),


    );
  }
  Card getListTile2(title,subtitle,textbutton){
    return Card(
        elevation:8,
        shadowColor: Colors.black26,
        child: Container(
            padding: EdgeInsets.all(18),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(  padding: EdgeInsets.fromLTRB(0,0,18,0),
                      child:
                      SizedBox(
                        height: 40.0,
                        width: 40.0,
                        child: TextButton(
                          child: Icon(Icons.close, color: Colors.white),
                          onPressed: () {
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                  )
                              ),
                              backgroundColor: MaterialStateProperty.all(Colors.red)
                          ),
                        ),
                      )
                  ),
                  Expanded(
                      child:
                      Column(

                          children: [
                            Text(
                                title,
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.amber,
                                    fontWeight: FontWeight.bold,fontSize: 18)
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
                                    MaterialPageRoute route = MaterialPageRoute(builder: (_) => FeedbackScreen());
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
                      )
                  )
                ])));
  }

  Card getListTile(title,subtitle){
    return Card(
        elevation:8,
        shadowColor: Colors.black26,
        child: Container(
          padding: EdgeInsets.all(18),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(  padding: EdgeInsets.fromLTRB(0,0,18,0),
                  child:
                    SizedBox(
                      height: 40.0,
                      width: 40.0,
                      child: TextButton(
                        child: Icon(Icons.check, color: Colors.white),
                        onPressed: () {
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                )
                            ),
                            backgroundColor: MaterialStateProperty.all(Colors.greenAccent)
                        ),
                      ),
                    )
              ),
                Expanded(
                    child:
                  Column(

                  children: [
                   Text(
                        title,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.amber,
                            fontWeight: FontWeight.bold,fontSize: 18)
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
                  ]
                  )
                )
    ])));
  }
}
