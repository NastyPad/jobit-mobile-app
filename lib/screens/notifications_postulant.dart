import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'feedback_screen.dart';
import 'navigation_drawer.dart';
import 'notifications_details.dart';

class NotificationsPostulant extends StatefulWidget {
  @override
  State<NotificationsPostulant> createState() => _NotificationsPostulantState();
}

class _NotificationsPostulantState extends State<NotificationsPostulant> {

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
      drawer:  NavigationDrawer() ,

      body: ListView.builder(scrollDirection: Axis.vertical, shrinkWrap:true ,
          itemCount:10, itemBuilder: (BuildContext context, int position) {
            return Column(
              children: [
                getListTile2('Sigue intentando!',
                    'Recibe el feedback para que pueda mejorar sus habilidades',0),
                getListTile2('Sigue intentando!',
                    'Recibe el feedback para que pueda mejorar sus habilidades',1),
              ],
            );
          }
      )
    );
  }
  Padding getListTile2(title,subtitle,accepted){
    return Padding(
        padding: EdgeInsets.fromLTRB(20,5,20,5),
        child: Material(
            borderRadius: BorderRadius.circular(18.0),
            elevation: 2,
            child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(20,10,20,10),
                title: Text(
                    title,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.amber,
                        fontWeight: FontWeight.bold,fontSize: 18)
                ),
                leading: SizedBox(
                  height: 40.0,
                  width: 40.0,
                  child: TextButton(
                    child: Icon(
                        (accepted==1)? Icons.check:Icons.close ,
                        color: Colors.white),
                    onPressed: () {
                    },
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            )
                        ),
                        backgroundColor: MaterialStateProperty.all((accepted==1)?Colors.greenAccent:Colors.red)
                    ),
                  ),
                ),
                subtitle: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0,10,0,5),
                        child: Text(
                            subtitle,
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black54,
                                fontWeight: FontWeight.normal,fontSize: 15)
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          MaterialPageRoute route = MaterialPageRoute(builder: (_) => FeedbackScreen());
                          Navigator.push(context, route);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amber, // Background color
                          onPrimary: Colors.white, // Text Color (Foreground color)
                        ),
                        child: Text(
                          (accepted==1)?'Send a message':'More information',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ]
                )
            )
        )
    );
  }

}
