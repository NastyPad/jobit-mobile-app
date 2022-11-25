import 'dart:convert';


import 'package:http/http.dart' as http;

import '../models/applicant_model.dart';
class ApplicantService {
  static Future<List<Applicant>> getAllApplicants() async {
    final response =
    await http.get(Uri.parse(
        "https://localhost:7244/api/v1/applicant"));

    if (response.statusCode == 200) {
      final responseJSON = json.decode(response.body);
      final allApplicant = listApplicant.listaApplicant(responseJSON);
      return allApplicant;
    }else{
      return <Applicant>[];
    }
    //
  }
  static Future<Applicant> getAllApplicantsBYID(num) async {
    final response =
    await http.get(Uri.parse(
        "https://localhost:7244/api/v1/applicant/"+num.toString()));

    if (response.statusCode == 200) {
      final responseJSON = json.decode(response.body);
      final allApplicant = Applicant.objJson(responseJSON);
      return allApplicant;
    }else{
      return Applicant(applicantId: 0, username: "", firstname: "", lastname: "", password: "", email: "");
    }
    //
  }
}