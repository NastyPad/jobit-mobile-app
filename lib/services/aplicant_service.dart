import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/models/add_model.dart';
import 'package:jobit_mobile_app/models/tech_skill.dart';
import 'package:jobit_mobile_app/models/user_profile_model.dart';
import 'package:http/http.dart' as http;
import 'package:jobit_mobile_app/models/user_tech_skill.dart';

var baseUrl = 'https://jobit-api-nastypad.azurewebsites.net/api/v1/applicant';

class AplicantProfile {
  Future<http.Response> getData() async {
    final response = await http.get(Uri.parse(baseUrl));
    return response;
  }

  Future<List<UserProfile>> getAllUsers() async {
    List<UserProfile> listResult = [];
    String body = "";
    List<UserTechSkill> userTechSkills=[];

    userTechSkills.add(UserTechSkill(TechSkill('https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg','Frontend'), 2));
    userTechSkills.add(UserTechSkill(TechSkill('https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg','Backend'), 2));
    userTechSkills.add(UserTechSkill(TechSkill('https://www.industriaanimacion.com///wp-content/uploads/2020/09/aang.jpg','React'), 2));

    await getData().then((response) => {
          if (response.statusCode == 200)
            {
              body = utf8.decode(response.bodyBytes),
              // print(utf8.decode(response.bodyBytes)),
              // print((body)['username']))
              for (var elemento in jsonDecode(body))
                {
                  // print(elemento['username'])
                  listResult.add(UserProfile(
                    elemento['applicantId'],
                      elemento['firstname'],
                      elemento['lastname'],
                      'Soy estudiante de la carrera de Ingeniería de Sistemas y Computación debe soy Creativo, dinámico y sin temor para asumir el reto de estudiar la carrera del futuro.',
                      'https://freesvg.org/img/abstract-user-flat-4.png',
                      userTechSkills)),
                }
            }
          // body = utf8.decode(response.bodyBytes),
        });

    return listResult;
  }

  getJsonInfo() {
    String body = '';
    // String?? body = '';
    getData().then((response) => {
          if (response.statusCode == 200)
            {body = utf8.decode(response.bodyBytes)}
        });
    return body;
  }
}
