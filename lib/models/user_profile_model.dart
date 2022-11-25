
import 'package:jobit_mobile_app/models/user_tech_skill.dart';

class UserProfile {
  int id;
  String firstname;
  String lastname;
  String description;
  String profilePhotoUrl;
  List<UserTechSkill> userTechSkills;

  UserProfile(this.id,this.firstname, this.lastname, this.description,
      this.profilePhotoUrl, this.userTechSkills);
  //UserProfile(this.firstname, this.lastname, this.description, this.photoUrl, this.userTechSkills);
}
