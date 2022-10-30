import 'package:flutter/material.dart';

class find_postulant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List data = [
      {'nombre': 'Dyland Saldana '},
      {'nombre': 'Dyland Saldana '},
      {'nombre': 'Dyland Saldana '},
      {'nombre': 'Dyland Saldana '},
      {'nombre': 'Dyland Saldana '},
    ];
    return Column(
      children: [
        Text('BUSCA'),

        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: data.map((e) {
              return SizedBox(
                height: 80,
                child: Card(
                  child: ListTile(
                    title: Text(
                      e['nombre'],
                      style: TextStyle(fontSize: 17,fontWeight:FontWeight.w300),
                    ),
                    leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pierre-Person.jpg/682px-Pierre-Person.jpg")),
                    trailing: const SizedBox(
                      width: 50, // <-- Your width
                      height: 50,
        
                      child: Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
