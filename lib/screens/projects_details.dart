import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/widgets/button_text_icon.dart';

class projects_details extends StatelessWidget {
  String text;
  projects_details(this.text);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
      child: Column(
        children: [
          Card(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        "About",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 150,
                          child: Text(
                              'Ive been studying at UPC since 2019. In all my student path, Ive been developing apps with different frameworks and technologies for university projects in each semester. I have domain in Spring Boot and .NET in server side applications. In the other hand, for client side applications, I utilize Vue.')),
                      Expanded(
                        child: Image.network(
                            height: 150,
                            'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0,),
                  Text('Evidencia'),
                                    SizedBox(height: 20.0,),

                  Center(
                    child: Image.network(
                          height: 150,
                          'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: SizedBox(
                      
            child: ButtonTextIcon(
                Colors.amber, Color.fromARGB(255, 4, 4, 4), 'Repositorio', Icons.folder),
            width: 200,
          ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
