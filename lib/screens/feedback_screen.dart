import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {

  List<Notification> notifications=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Feedback'),
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(child: Container(
            padding: EdgeInsets.all(20),
            child: Card(
              elevation:8,
              shadowColor: Colors.black26,
              child:  Column(
                children: [
                  Card(
                    child:Container(
                      padding: EdgeInsets.all(20),
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
                            Expanded( child: Text(
                                'Programador de aplicaciones moviles',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.amber,
                                    fontWeight: FontWeight.bold,fontSize: 18)
                            )),
                          ]
                      )
                      )
                  ),
                  Container(
                      padding: EdgeInsets.all(20),
                      child:
                        Text('Fusce id quam leo. Suspendisse tellus quam, dictum quis arcu nec, efficitur rutrum eros. Fusce et posuere dui. Nunc porttitor sollicitudin ligula eu malesuada. Vestibulum venenatis urna quis leo eleifend, sed consequat neque ornare. Sed tempor elit eget nibh laoreet tristique. Vestibulum bibendum eu nibh non elementum. Suspendisse condimentum luctus nibh at consequat. Donec lobortis in dolor in placerat. Etiam rutrum elit at nibh iaculis congue. Quisque vehicula, tellus a pharetra ornare, ligula nisi finibus ex, vitae auctor velit dui ac ex. In ullamcorper, est eget fringilla hendrerit, libero nunc laoreet erat, quis bibendum quam velit vitae velit. Proin id porttitor nunc.')
                  )
                ]
              )
          )
        )
    ));
  }
}