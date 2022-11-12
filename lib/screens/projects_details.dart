import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/widgets/button_text_icon.dart';

class projects_details extends StatelessWidget {
  var object;
  projects_details(this.object);

  @override
  Widget build(BuildContext context) {
    var project = {
      'nameProject': 'Genshi Impact',
      'imageProject':
          'https://i.pinimg.com/originals/b4/f2/aa/b4f2aab8fcb2ad1eb291bcea536c4269.gif',
      'imageEvidence':
          'https://juncotic.com/wp-content/uploads/2016/09/animacion4.gif',
      'descriptionProject':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
    };
    if (object == null) {
      object = project;
    }
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
                  Center(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 260,
                          child: Center(
                            child: Text(
                              object['nameProject']!,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                          ),
                        ),
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
                          child: Text(object['descriptionProject']!)),
                      Expanded(
                        child: Image.network(
                            height: 150, object['imageProject'].toString()),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Evidencia',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: Image.network(
                        height: 150, object['imageEvidence'].toString()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SizedBox(
                      child: ButtonTextIcon(
                          Colors.amber,
                          Color.fromARGB(255, 4, 4, 4),
                          'Repositorio',
                          Icons.folder),
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
