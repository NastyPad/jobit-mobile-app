import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/message_model.dart';
import '../models/recruiter_model.dart';
import '../services/chat_service.dart';
import '../services/message_service.dart';
import '../services/recruiter_service.dart';

class ChatApplicant extends StatefulWidget {
  List<String> names=['Erick Cruz','Renzo García','Sandra Gomez','Alicia Torres'];

  @override
  State<ChatApplicant> createState() => _ChatApplicantState();
}

class _ChatApplicantState extends State<ChatApplicant> {
  late List recruiters;
  TextEditingController _textocontroller = TextEditingController();
  final ScrollController _controller = ScrollController();
  late Recruiter actual;
  Future initialize() async {
    recruiters = [];
    recruiters = await RecruiterService.getAllRecruiters() ;
    setState(() {
      recruiters = recruiters;
      actual=recruiters[0];
    });
  }
  @override
  void initState() {
    initialize();
    super.initState();
  }

  Future<List<Message>> _getData(num) async {
    var values = MessageService.getAllMessages(1,num);

    await new Future.delayed(new Duration(seconds: 5));

    return values;
  }


  @override
  Widget build(BuildContext context) {
    //String actual=names[0];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: true,
        backgroundColor: Colors.amber.shade600,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
      ),
      //  drawer:  NavigationDrawer() ,
      body: Container(
          padding: EdgeInsets.all(20),
          child:
          Column(children: [
            SizedBox(
                height: 140,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: recruiters.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                        width: 100.0,
                        height: 140.0,
                        child: ElevatedButton(
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white) ),
                            onPressed: () async {
                              actual=recruiters[index];
                              setState(() {actual=recruiters[index];});
                              _getData(actual.recruiterId);
                              bool status = await ChatService.getAllChatBYID(actual.recruiterId,1);

                              if (status) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(content: Text('yes')));
                              }
                              else
                              {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(content: Text('no')));
                                Map<String, dynamic> dataUpdate = {
                                  "applicantId": 1,
                                  "recruiterId": actual.recruiterId
                                };
                                bool ss = await ChatService().postChat(dataUpdate);
                              }
                            },
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
                                    Text(
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        recruiters[index].firstname.toString(),
                                        style: TextStyle(color: Colors.amber,
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
                        actual.firstname,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.amber,
                            fontWeight: FontWeight.bold,fontSize: 18))
                )
            ),
            Expanded(
                child: FutureBuilder(
                  future: MessageService.getAllMessages(actual.recruiterId,1),
                  builder: (context, AsyncSnapshot<List> snapshot){
                    return ListView.builder(
                        controller: _controller,
                        scrollDirection: Axis.vertical,
                        shrinkWrap:true ,
                        itemCount:snapshot.data!.length,
                        itemBuilder: (BuildContext context, int position) {
                          var messagee = snapshot.data![position];
                          _controller.jumpTo(_controller.position.maxScrollExtent);

                          if (messagee.whoSentIt == 2) {
                            return fromMessage(messagee.messageContent.toString());
                          }else{
                            return toMessage(messagee.messageContent.toString());

                          }
                        }
                    );
                  },
                )
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(controller: _textocontroller, decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Send a message',
                    )),
                  )
                  ,
                  TextButton(
                    child: Icon(Icons.send, color: Colors.black54),
                    onPressed: () async {
                      //DateTime now = DateTime.now();
                      Map<String, dynamic> dataUpdate = {
                        'messageContent': _textocontroller.text,
                        'whoSentIt': 2, // 1 = reclutador
                        'applicantId': 1, // poner id del usuario logeado
                        'recruiterId': actual.recruiterId
                      };
                      bool status = await MessageService().postMessage(dataUpdate);
                      if (status) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text('Post updated')));
                      }
                      else
                      {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text('Failed to update the post')));
                      }
                      setState(() {});
                      _controller.jumpTo(_controller.position.maxScrollExtent);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          )
                      ),
                    ),
                  )
                ]
            )

          ])),
    );
  }

  Row fromMessage(mensaje){
    return Row(
        children:[
          SizedBox(
            width: MediaQuery.of(context).size.width*2/4-20,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width*2/4-20,
              child:  Card(
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
                      child:  Padding(
                          padding: EdgeInsets.all(7),
                          child: Text(mensaje,
                            textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.white),))
                  )
              )
          )]
    );
  }
  Row toMessage(mensaje) {
    return Row(
        children:[
          SizedBox(
            width: MediaQuery.of(context).size.width*2/4-20,
            child:   Container(
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
              child:Card(
                elevation: 0,
                color:Colors.white,
                child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Text(mensaje,textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold))
                ), //declare your widget here
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width*2/4-20,
          )
        ]
    );
  }
// 'Hello, we are very happy to have you as a candidate and we want to continue the selection process with you.
// 'Hello, thanks for this opportunity, what is the next phase about?'
}