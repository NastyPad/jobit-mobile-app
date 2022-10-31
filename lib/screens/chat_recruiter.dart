import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatRecruiter extends StatefulWidget {
  List<String> names=['Erick Cruz','Renzo García','Sandra Gomez','Alicia Torres'];

  @override
  State<ChatRecruiter> createState() => _ChatRecruiterState();
}

class _ChatRecruiterState extends State<ChatRecruiter> {
  List<String> names=['Erick Cruz','Renzo García','Sandra Gomez','Alicia Torres','OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO'];

  @override
  Widget build(BuildContext context) {
    String actual=names[0];
    return Container(
        padding: EdgeInsets.all(20),
        child:
        Column(children: [
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
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white) ),
                          onPressed: () { actual=names[index];},
                          child: Container(
                                  width: 100,
                                  height: 140,
                                  padding: EdgeInsets.all(0),
                                  child:
                                     Column(
                                        children: [
                                          CircleAvatar(radius: 40,
                                              backgroundImage: NetworkImage(
                                                  'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png')
                                          ),
                                          SizedBox(height: 5),
                                          Text(textAlign: TextAlign.center,(names[index].length >10)? names[index].substring(0,8)+'..': names[index].substring(0,names[index].length),style: TextStyle(color: Colors.amber,
                                              fontWeight: FontWeight.bold,fontSize: 18))
                                        ]
                                    ),)

                      )
                    );
                  },
                )
            ),

            Card(
              elevation: 8,
              shadowColor: Colors.black26,
              child: SizedBox(
                  width: MediaQuery.of(context).size.width-40,
                  height: 27,
                  child: Text(
                      actual,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.amber,
                          fontWeight: FontWeight.bold,fontSize: 18))
              )
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height-(366),
                child: ListView.builder(scrollDirection: Axis.vertical, shrinkWrap:true ,
                    itemCount:2, itemBuilder: (BuildContext context, int position) {
                      return Row(
                        children:[
                          SizedBox(
                            width: MediaQuery.of(context).size.width*2/4-20,
                            child:  Card(
                                child: Padding(
                                    padding: EdgeInsets.all(7),
                                    child: Text('Hello',textAlign: TextAlign.left)))
                          )
                        ]
                      );
                    }
                )
            ),
            TextField( decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Send a message',
            ),)
            ]
        ),

    );
  }
}