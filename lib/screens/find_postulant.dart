import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/screens/developer_profile_screen_send.dart';

class find_postulant extends StatelessWidget {
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
      'userSpecialities': ['Frontend', 'HTML'],
      'about':
          "I've been studying at UPC since 2019. In all my student path, I've been developing apps with different frameworks and technologies for university projects in each semester. I have domain in Spring Boot and .NET in server side applications. In the other hand, for client side applications, I utilize Vue.",
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Steven Saldana',
      'userSpecialities': ['Frontend', 'HTML'],
      'about':
          "I've been studying at UPC since 2019. In all my student path, I've been developing apps with different frameworks and technologies for university projects in each semester. I have domain in Spring Boot and .NET in server side applications. In the other hand, for client side applications, I utilize Vue.",
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Alyson Saldana',
      'userSpecialities': ['Frontend', 'HTML'],
      'about':
          "I've been studying at UPC since 2019. In all my student path, I've been developing apps with different frameworks and technologies for university projects in each semester. I have domain in Spring Boot and .NET in server side applications. In the other hand, for client side applications, I utilize Vue.",
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Dyland Saldana 2',
      'userSpecialities': ['Frontend', 'HTML'],
      'about':
          "I've been studying at UPC since 2019. In all my student path, I've been developing apps with different frameworks and technologies for university projects in each semester. I have domain in Spring Boot and .NET in server side applications. In the other hand, for client side applications, I utilize Vue.",
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Dyland Saldana 3',
      'userSpecialities': ['Frontend', 'HTML'],
      'about':
          "I've been studying at UPC since 2019. In all my student path, I've been developing apps with different frameworks and technologies for university projects in each semester. I have domain in Spring Boot and .NET in server side applications. In the other hand, for client side applications, I utilize Vue.",
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Luigi Saldana 3',
      'userSpecialities': ['Frontend', 'HTML'],
      'about':
          "I've been studying at UPC since 2019. In all my student path, I've been developing apps with different frameworks and technologies for university projects in each semester. I have domain in Spring Boot and .NET in server side applications. In the other hand, for client side applications, I utilize Vue.",
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Luigi Saldana 3',
      'userSpecialities': ['Frontend', 'HTML'],
      'about':
          "I've been studying at UPC since 2019. In all my student path, I've been developing apps with different frameworks and technologies for university projects in each semester. I have domain in Spring Boot and .NET in server side applications. In the other hand, for client side applications, I utilize Vue.",
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Luigi Saldana 3',
      'userSpecialities': ['Frontend', 'HTML'],
      'about':
          "I've been studying at UPC since 2019. In all my student path, I've been developing apps with different frameworks and technologies for university projects in each semester. I have domain in Spring Boot and .NET in server side applications. In the other hand, for client side applications, I utilize Vue.",
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Dyland Saldana 1',
      'userSpecialities': ['Frontend', 'HTML'],
      'about':
          "I've been studying at UPC since 2019. In all my student path, I've been developing apps with different frameworks and technologies for university projects in each semester. I have domain in Spring Boot and .NET in server side applications. In the other hand, for client side applications, I utilize Vue.",
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    },
    {
      'name': 'Steven Saldana',
      'userSpecialities': ['Frontend', 'HTML'],
      'about':
          "I've been studying at UPC since 2019. In all my student path, I've been developing apps with different frameworks and technologies for university projects in each semester. I have domain in Spring Boot and .NET in server side applications. In the other hand, for client side applications, I utilize Vue.",
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg'
    }
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
                Card(
                  child: ListTile(
                    title: Text(i['name']),
                    subtitle: Row(
                      children: [
                        for (var j in i['userSpecialities'])
                          Text(j.toString() + ' '),
                      ],
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(i['avatar']),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                //AQUI VA EL PERFIL DEL POSTULANTE
                                builder: (context) => newPage(
                                    i['name'],
                                    i['userSpecialities'],
                                    i['avatar'],
                                    i['about'])
                                    )
                            //
                            );
                      },
                    ),
                  ),
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
      if (element['userSpecialities']
          .toLowerCase()
          .contains(busqueda.toLowerCase())) {
        Result.add(element);
      }
    }
    setState(() {
      Result = Result;
    });
  }
}

class newPage extends StatefulWidget {
  String name;
  String userPhoto;
  List<String> userSpecialities;
  String about;

  newPage(this.name, this.userSpecialities, this.userPhoto, this.about);

  @override
  State<newPage> createState() => _newPageState();
}

class _newPageState extends State<newPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Postulante ' + widget.name),
          backgroundColor: Color.fromARGB(255, 255, 191, 0),
        ),
        body: DeveloperProfileScreenSend(widget.about, widget.userSpecialities, widget.userPhoto)

        // DeveloperProfileScreenSend(i['name'], i['userSpecialities'], i['avatar']) ,
        );
  }
}
