import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/models/user_model.dart';

//Models
import 'package:jobit_mobile_app/models/user_profile_model.dart';
import 'package:jobit_mobile_app/models/user_tech_skill.dart';
import 'package:jobit_mobile_app/models/tech_skill.dart';

import 'package:http/http.dart' as http;


class UserProfileTools {
  
  UserProfileTools();

  static void setUserProfile(List<UserTechSkill> userTechSkills, var jsonData) async {
    jsonData["userProfileTechSkills"].forEach((userTechSkill) {
      //Primitive
      int experienceYears = userTechSkill["experienceYears"];
      String techName = userTechSkill["techSkill"]["techName"];
      String photoUrl = userTechSkill["techSkill"]["photoUrl"];

      //Complex
      TechSkill techSkill = TechSkill(photoUrl, techName);

      userTechSkills.add(UserTechSkill(techSkill, experienceYears));
    });
  }
}


class UserProfileAgentClient {
  String ipAddressPhone = "10.0.2.2";
  String ipAddressWeb = "127.0.0.1";
  String path = "api/v1/userprofile";




  Future<UserProfile> getUserProfileByUserId(int userId) async {
    String baseUrl = "$ipAddressPhone:7244";
    var source = Uri.https(baseUrl, "$path/$userId");
    final response = await http.get(source);
    final jsonData = jsonDecode(response.body);


    List<UserTechSkill> userTechSkills = [];

    UserProfileTools.setUserProfile(userTechSkills, jsonData);

    final UserProfile userProfileFound;
    if(response.body.isNotEmpty) {
      userProfileFound =  UserProfile(
          jsonData['applicantId'],
          jsonData['firstname'],
          jsonData['lastname'],
          jsonData['description'],
          jsonData['profilePhotoUrl'],
          userTechSkills
      );
    } else {
      userProfileFound =  UserProfile(0,"", "", "", "", []);
    }
    return userProfileFound;
  }
}