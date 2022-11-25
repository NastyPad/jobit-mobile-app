import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/screens/navigation_drawer_employer.dart';

import 'navigation_drawer.dart';

class ChatRecruiter extends StatefulWidget {
  List<String> names = [
    'Erick Cruz',
    'Renzo García',
    'Sandra Gomez',
    'Alicia Torres'
  ];

  @override
  State<ChatRecruiter> createState() => _ChatRecruiterState();
}

class _ChatRecruiterState extends State<ChatRecruiter> {
  List<String> names = [
    'Erick Cruz',
    'Renzo García',
    'Sandra Gomez',
    'Alicia Torres',
    'OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO'
  ];
  var opcion = 'recruiters';
  @override
  Widget build(BuildContext context) {
    String actual = names[0];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mensajes'),
        centerTitle: true,
        backgroundColor: Colors.amber.shade600,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
      ),
      drawer: drawerOption(opcion),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            SizedBox(
                height: 140,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                        width: 100.0,
                        height: 140.0,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            onPressed: () {
                              actual = names[index];
                              setState(() {
                                actual = names[index];
                              });
                            },
                            child: Container(
                              width: 100,
                              height: 140,
                              padding: EdgeInsets.all(0),
                              child: Column(children: [
                                CircleAvatar(
                                    radius: 40,
                                    backgroundImage: NetworkImage(
                                        'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png')),
                                SizedBox(height: 5),
                                Text(
                                    textAlign: TextAlign.center,
                                    (names[index].length > 10)
                                        ? names[index].substring(0, 8) + '..'
                                        : names[index]
                                            .substring(0, names[index].length),
                                    style: TextStyle(
                                        color: Colors.amber,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18))
                              ]),
                            )));
                  },
                )),
            Card(
                elevation: 8,
                shadowColor: Colors.black26,
                child: SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    height: 27,
                    child: Text(actual,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)))),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int position) {
                      return Column(children: [
                        Row(children: [
                          SizedBox(
                            width:
                                MediaQuery.of(context).size.width * 2 / 4 - 20,
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 2 / 4 -
                                  20,
                              child: Card(
                                  child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.yellow,
                                            Colors.orange.shade800
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                      ),
                                      child: Padding(
                                          padding: EdgeInsets.all(7),
                                          child: Text(
                                            'Hello, we are very happy to have you as a candidate and we want to continue the selection process with you.',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          )))))
                        ]),
                        Row(children: [
                          SizedBox(
                            width:
                                MediaQuery.of(context).size.width * 2 / 4 - 20,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.yellow,
                                    Colors.orange.shade800
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              child: Card(
                                elevation: 0,
                                color: Colors.white,
                                child: Padding(
                                    padding: EdgeInsets.all(7),
                                    child: Text(
                                        'Hello, thanks for this opportunity, what is the next phase about?',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight
                                                .bold))), //declare your widget here
                              ),
                            ),
                          ),
                          SizedBox(
                            width:
                                MediaQuery.of(context).size.width * 2 / 4 - 20,
                          )
                        ])
                      ]);
                    })),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Send a message',
                )),
              ),
              TextButton(
                child: Icon(Icons.send, color: Colors.black54),
                onPressed: () {
                  //enviar primer mensaje
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  )),
                ),
              )
            ])
          ])),
    );
  }
}

drawerOption(opcion) {
  if (opcion == 'recruiter') {
    return NavigationDrawerEmployer();
  }else{
    return NavigationDrawer();

  }
}
