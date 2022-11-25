import 'package:flutter/material.dart';

class enterprise_profile extends StatefulWidget {
  const enterprise_profile({super.key});

  @override
  State<enterprise_profile> createState() => _enterprise_profileState();
}

class _enterprise_profileState extends State<enterprise_profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        
        body: Center(
          child: Card(
            elevation: 50,
            shadowColor: Colors.black,
            child: SizedBox(
              width: 350,
              height: 610,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ConstrainedBox(
                          constraints: const BoxConstraints(
                            minWidth: 34,
                            minHeight: 34,
                            maxWidth: 54,
                            maxHeight: 54,
                          ),
                          child: Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Rockstar_Games_Logo.svg/1200px-Rockstar_Games_Logo.svg.png",
                              fit: BoxFit.cover),
                        ),
                        SizedBox(width: 10), 
                        const Text(
                          'Rockstar Games',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Colors.amber), //Textstyle
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 10,
                    ), //SizedBox
                    //Text
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Quienes Somos?',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.amber,
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ), //SizedBox
                    const Text(
                      'Rockstar Games are a game developer and publisher responsible for some of the most successful, controversial, and innovative games in the industry. They are best known for producing series like Grand Theft Auto, Midnight Club, and Max Payne and for their ground-breaking work in open world games.',
                      style: TextStyle(
                        fontSize: 15,
                      ), //Textstyle
                    ), //Text
                    const SizedBox(
                      height: 200,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        width: 100,

                        child: ElevatedButton(
                          onPressed: () => 'Null',
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.amber)),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: const [Icon(Icons.edit), Text('Edit')],
                            ),
                          ),
                        ),
                        // RaisedButton is deprecated and should not be used
                        // Use ElevatedButton instead
                        // child: RaisedButton(
                        //   onPressed: () => null,
                        //   color: Colors.green,
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(4.0),
                        //     child: Row(
                        //       children: const [
                        //         Icon(Icons.touch_app),
                        //         Text('Visit'),
                        //       ],
                        //     ), //Row
                        //   ), //Padding
                        // ), //RaisedButton
                      ),
                    ) //SizedBox
                    //SizedBox
                  ],
                ), //Column
              ), //Padding
            ), //SizedBox
          ),
        ),
      ),
    );
  }
}
