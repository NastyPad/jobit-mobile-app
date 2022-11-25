import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jobit_mobile_app/models/project_model.dart';

var baseUrl = 'https://jobit-api-nastypad.azurewebsites.net/api/v1/project';

class ProjectService {
  Future<http.Response> getData() async {
    final response = await http.get(Uri.parse(baseUrl));
    return response;
  }

  Future<List<Project>> getProjects() async {
    List<Project> listProject = [];
    String body = '';
    await getData().then((response) => {
          if (response.statusCode == 200)
            {
              body = utf8.decode(response.bodyBytes),
              for (var elemento in jsonDecode(body))
                {
                  listProject.add(Project(elemento['projectName'], elemento['description'],  elemento['imageEvidence'], elemento['projectUrl'], elemento['applicant']['applicantId']))
                }
            }
    });
  return listProject;
  }

  Future<List<Project>> getProjectsById(int id) async {
    List<Project> listProject = [];
    String body = '';
    await getData().then((response) => {
          if (response.statusCode == 200)
            {
              body = utf8.decode(response.bodyBytes),
              for (var elemento in jsonDecode(body))
                {
                  if(elemento['applicant']['applicantId']==id){
                  listProject.add(Project(elemento['projectName'], elemento['description'],  elemento['codeSource'], elemento['projectUrl'], elemento['applicant']['applicantId']))
                }
                }
            }
    });
  return listProject;

  }



}
