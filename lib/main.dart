import 'package:flutter/material.dart';
import 'package:untitled/screens/chat_recruiter.dart';
import 'package:untitled/screens/notifications_postulant.dart';

import 'screens/notifications.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.amber,
              title: Text("JoBit"),
            ),
            body: Notifications()

        )
    );
  }
}
