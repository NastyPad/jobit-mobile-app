import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/models/user_profile_model.dart';
import 'package:jobit_mobile_app/screens/developer_profile_screen_send.dart';
import 'package:jobit_mobile_app/screens/navigation_drawer_employer.dart';
import 'package:jobit_mobile_app/services/aplicant_service.dart';

class find_postulant extends StatefulWidget {
  @override
  State<find_postulant> createState() => _MyCustomState();
}

class _MyCustomState extends State<find_postulant> {
  List searchTerms = [
    {
      'name': 'Dyland Saldana 1',
      'userSpecialities': ['Frontend', 'HTML'],
      'about':
          "I've been studying at UPC since 2019. In all my student path, I've been developing apps with different frameworks and technologies for university projects in each semester. I have domain in Spring Boot and .NET in server side applications. In the other hand, for client side applications, I utilize Vue.",
      'avatar':
          'https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg',
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
  ];
  List getDataAplicant = [];
  List Result = [];
  List resultado = [];
  AplicantProfile aplicationProfile = AplicantProfile();
  List<String> userSpecialities = [];
  bool loading = true;

  loadData2() async {
    resultado = await aplicationProfile.getAllUsers();
    setState(() {
      resultado = resultado;
      Result = resultado;
      loading = false;
    });

    for (var j in resultado) {
      for (var i in j.userTechSkills) {
        userSpecialities.add(i.techSkill.techName.toString());
      }
    }

    //         Text(j.toString() + ' '),
  }

  @override
  void initState() {
    // List resultado = await aplicationProfile.getAllUsers();
    // for (var e in resultado) {
    //   print(e);
    // }
    super.initState();
    loading = true;

    loadData2();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerEmployer(),
      appBar: AppBar(
        title: const Text('Buscar'),
        centerTitle: true,
        backgroundColor: Colors.amber.shade600,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
      ),
      body: Column(
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
                      title: Text(i.firstname),
                      subtitle: Row(
                        children: [
                          for (var j in i.userTechSkills)
                            Text(j.techSkill.techName.toString() + ' '),
                        ],
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(i.profilePhotoUrl),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_forward),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  //AQUI VA EL PERFIL DEL POSTULANTE
                                  builder: (context) => newPage(
                                      i.id,
                                      i.firstname,
                                      userSpecialities,
                                      i.profilePhotoUrl,
                                      i.description,
                                      ))
                              //
                              );
                        },
                      ),
                    ),
                  ),
              ],
            ))
          ]),
    );
  }

  void loadData(busqueda) {
    Result = [];
    for (var element in resultado) {
      if (element.firstname
          .toString()
          .toLowerCase()
          .contains(busqueda.toLowerCase())) {
        Result.add(element);
      }
      // for (var abilitie in element['userSpecialities']) {
      //   if (abilitie.toLowerCase().contains(busqueda.toLowerCase())) {
      //     Result.add(element);
      //   }
      // }

    }
    setState(() {
      Result = Result;
    });
  }
}

class newPage extends StatefulWidget {
  String name;
  String userPhoto;
  int id;
  List<String> userSpecialities;
  String about;

  newPage(this.id,this.name, this.userSpecialities, this.userPhoto, this.about);

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
        body: DeveloperProfileScreenSend(widget.id,
            widget.about, widget.userSpecialities, widget.userPhoto)

        // DeveloperProfileScreenSend(i['name'], i['userSpecialities'], i['avatar']) ,
        );
  }
}
