import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AdsJob(),
    );
  }
}

//PROGRAM
class AdsJob extends StatefulWidget {
  @override
  State<AdsJob> createState() => _AdsJobState();
}

class _AdsJobState extends State<AdsJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: _menu),
        title: Text("JoBit"),
      ),
      body: Column(
          children: <Widget>[
            Center(
                child: CardContainer()
            )
          ]
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){

        },
      ),
    );
  }

  void _menu(){

  }
}


//WIDGET TITLE ADS
class CardContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Text(
          'MY ADS',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.amberAccent
        ),
      ),
      padding: EdgeInsets.only(top: 10, right: 80, left: 80, bottom: 10),

      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black54,
              blurRadius: 7.0,
              offset: Offset(0.0, 4)
          )
        ],

        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0)
      )
    );
  }
}
