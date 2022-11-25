import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jobit_mobile_app/models/project_model.dart';

var baseUrl = 'https://10.0.2.2:7244/api/v1/project';

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
                  listProject.add(Project(elemento['projectName'], elemento['description'],  'https://cdn1.epicgames.com/offer/3ddd6a590da64e3686042d108968a6b2/EGS_GodofWar_SantaMonicaStudio_S2_1200x1600-fbdf3cbc2980749091d52751ffabb7b7_1200x1600-fbdf3cbc2980749091d52751ffabb7b7', 'https://cdn1.epicgames.com/offer/3ddd6a590da64e3686042d108968a6b2/EGS_GodofWar_SantaMonicaStudio_S2_1200x1600-fbdf3cbc2980749091d52751ffabb7b7_1200x1600-fbdf3cbc2980749091d52751ffabb7b7', elemento['applicant']['applicantId']))
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
                  listProject.add(Project(elemento['projectName'], elemento['description'],  'https://cdn1.epicgames.com/offer/3ddd6a590da64e3686042d108968a6b2/EGS_GodofWar_SantaMonicaStudio_S2_1200x1600-fbdf3cbc2980749091d52751ffabb7b7_1200x1600-fbdf3cbc2980749091d52751ffabb7b7', 'https://cdn1.epicgames.com/offer/3ddd6a590da64e3686042d108968a6b2/EGS_GodofWar_SantaMonicaStudio_S2_1200x1600-fbdf3cbc2980749091d52751ffabb7b7_1200x1600-fbdf3cbc2980749091d52751ffabb7b7', elemento['applicant']['applicantId']))
                }
                }
            }
    });
  return listProject;

  }



}
