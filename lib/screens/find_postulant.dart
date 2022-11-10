import 'package:flutter/material.dart';

class find_postulant extends StatelessWidget {
  List data = [
    {'nombre': 'Dyland Saldana '},
    {'nombre': 'Steven Saldana '},
    {'nombre': 'Alyson Saldana '},
    {'nombre': 'Dyland Saldana '},
    {'nombre': 'Dyland Saldana '},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  State<MyCustomForm> createState() => _MyCustomState();
}

class _MyCustomState extends State<MyCustomForm> {
  List searchTerms = [
    {
      'name': 'Dyland Saldana 1',
      'description': 'Frontend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Steven Saldana',
      'description': 'Frontend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Alyson Saldana',
      'description': 'Frontend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Dyland Saldana 2',
      'description': 'Frontend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Dyland Saldana 3',
      'description': 'Frontend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Dyland Saldana 3',
      'description': 'Frontend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Luigi Saldana 3',
      'description': 'Frontend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Luigi Saldana 3',
      'description': 'Frontend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Luigi Saldana 3',
      'description': 'Frontend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Luigi Saldana 3',
      'description': 'Frontend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Dyland Saldana 1',
      'description': 'Backend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Steven Saldana',
      'description': 'Backend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Alyson Saldana',
      'description': 'Backend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'dyland Saldana 2',
      'description': 'Backend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'land Saldana 3',
      'description': 'Backend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'land Saldana 3',
      'description': 'Backend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'land Saldana 3',
      'description': 'Backend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'land Saldana 3',
      'description': 'Backend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'land Saldana 3',
      'description': 'Backend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'land Saldana 3',
      'description': 'Backend',
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
  ];
  List Result = [];
  @override
  void initState() {
    Result = searchTerms;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              onChanged: (String value) {
                loadData(value);
              },
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Buscar Postulante',
              ),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              for (var i in Result)
                ListTile(
                  title: Text(i['name']),
                  subtitle: Text(i['description']),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(i['avatar']),
                  ),
                  trailing:Icon(Icons.arrow_forward,)
                ),
            ],
          ))
        ]);
  }

  void loadData(busqueda) {
    Result = [];
    for (var element in searchTerms) {
      if (element['name'].toLowerCase().contains(busqueda.toLowerCase())) {
        Result.add(element);
      }
      if (element['description'].toLowerCase().contains(busqueda.toLowerCase())) {
        Result.add(element);
      }
    }
    setState(() {
      Result = Result;
    });
  }
}
