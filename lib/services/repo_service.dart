import 'dart:convert';


import 'package:http/http.dart' as http;

import '../models/Repo_model.dart';

class RepoService {
  static Future<List<Repo>> getAllRepo(username) async {
    final response =
    await http.get(Uri.parse(
        "https://api.github.com/users/"+username.toString()+"/repos"));

    if (response.statusCode == 200) {
      final responseJSON = json.decode(response.body);
      final allRepo = listRepo.listaRepo(responseJSON);
      return allRepo;
    } else {
      return <Repo>[];
    }
    //
  }
}