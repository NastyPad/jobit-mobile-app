import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsDetails extends StatelessWidget {

  NotificationsDetails();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Details'),
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(child: Container(
          padding: EdgeInsets.all(20),
          child: Card(
            elevation:8,
            shadowColor: Colors.black26,
            child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width-40,
                      child: Text(
                          'Programador de aplicaciones moviles',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.amber,
                              fontWeight: FontWeight.bold,fontSize: 18))
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                        width: MediaQuery.of(context).size.width-40,
                        child: Text(
                            '  Desarrollador mobile  |   Senior',
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black38,
                                fontWeight: FontWeight.normal,fontSize: 13))
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                        width: MediaQuery.of(context).size.width-40,
                        child: Text(
                                'Se busca mauris elementum arcu urna, dictum'
                                ' malesuada velit efficitur a. Donec blandit, '
                                'nulla et lobortis lacinia, felis sapien maximus'
                                ' urna, in malesuada quam est et erat. Donec elit lectus, lacinia et dignissim nec, egestas lacinia lorem. Quisque semper dignissim fermentum. Sed rhoncus mi in mi fringilla, eget dignissim nibh congue. Sed facilisis pulvinar porttitor. ',
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.normal,fontSize: 15))
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                        height: 100*10,
                        child: ListView.builder(scrollDirection: Axis.vertical, shrinkWrap:true ,
                            itemCount:10, itemBuilder: (BuildContext context, int position) {
                              return getListTilePostulant('Alejandro Pizarro Vargas',
                                  'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',context);
                        }
                        )
                    )
                  ],
                )
            ),
          ),
        )
        )
    );
  }

  SizedBox getListTilePostulant(name,photo,context){
    return SizedBox(
      height:100,
      child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(photo)
          ),
          title: SizedBox(
              height: 30,
              child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber,
                      fontWeight: FontWeight.bold,fontSize: 18))
          ),
          subtitle: Row(
              children:[

                SizedBox(
                  height: 40.0,
                  width: 40.0,
                  child: TextButton(
                    child: Icon(Icons.check, color: Colors.white),
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            )
                        ),
                        backgroundColor: MaterialStateProperty.all(Colors.greenAccent)
                    ),
                  ),

                ),
                Spacer(),
                SizedBox(
                  height: 40.0,
                  width: 40.0,
                  child: TextButton(
                    child: Icon(Icons.close, color: Colors.white),
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            )
                        ),
                        backgroundColor: MaterialStateProperty.all(Colors.red)
                    ),
                  ),
                ),
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
                    'Ver perfil',
                    style: TextStyle(fontSize: 15),
                  ),
                )
              ]
          )
      ),
    );
  }

}