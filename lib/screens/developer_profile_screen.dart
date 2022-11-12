import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/widgets/tag.dart';
import 'package:jobit_mobile_app/widgets/education_item.dart';
import 'package:jobit_mobile_app/models/user_profile_model.dart';
import 'package:jobit_mobile_app/services/user_profile_service.dart';
import 'package:jobit_mobile_app/widgets/techskills/user_tech_skill_item.dart';

import "package:http/http.dart" as http;

class DeveloperProfileScreen extends StatefulWidget {
  String userBio;
  String userPhoto;
  List<String> userSpecialities;

  DeveloperProfileScreen(this.userBio, this.userSpecialities, this.userPhoto,
      {Key? key})
      : super(key: key);

  @override
  State<DeveloperProfileScreen> createState() => _DeveloperProfileScreenState();
}

class _DeveloperProfileScreenState extends State<DeveloperProfileScreen> {
  UserProfileAgentClient userProfileAgentClient = UserProfileAgentClient();

  //Text Styles
  static const cardTitleStyle = TextStyle(
      color: Colors.black54, fontWeight: FontWeight.w600, fontSize: 18);
  static const userNameTitleStyle =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 20);

  late Future<UserProfile> currentUserProfile;

  @override
  void initState() {
    currentUserProfile = userProfileAgentClient.getUserProfileByUserId(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget cardMainInfo(UserProfile currentUserProfile) {
      final userPhoto = Container(
        margin: const EdgeInsets.only(top: 35),
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(currentUserProfile.profilePhotoUrl),
                fit: BoxFit.cover)),
      );

      final userProfileTitle = SizedBox(
        width: double.maxFinite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "${currentUserProfile.firstname} ${currentUserProfile.lastname}",
                style: userNameTitleStyle),
            const Padding(padding: EdgeInsets.all(5)),
            const Icon(Icons.verified, color: Colors.blueAccent)
          ],
        ),
      );

      final userProfileExtra = Column(
        children: [
          Text(
            "Universidad Peruana de Ciencias Aplicadas",
            style: TextStyle(color: Colors.grey),
          ),
          Text("Lima, Lima, Peru",
              style: TextStyle(color: Colors.grey, fontSize: 12))
        ],
      );

      String sample =
          "https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29kZSUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80";

      final cardMainInfo = Card(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0)),
                    child:
                        Image(fit: BoxFit.cover, image: NetworkImage(sample)),
                  ),
                ),
                userPhoto
              ],
            ),
            userProfileTitle,
            const Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0)),
            userProfileExtra,
            const Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0))
          ],
        ),
      );
      return cardMainInfo;
    }

    Widget cardAboutInfo(UserProfile currentUserProfile) {
      final cardAboutInfo = Card(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "About",
                style: cardTitleStyle,
              ),
              const Padding(padding: EdgeInsets.all(5)),
              Text(currentUserProfile.description)
            ],
          ),
        ),
      );
      return cardAboutInfo;
    }

    Widget cardTagsInfo() {
      final userTags = Wrap(
        spacing: 3,
        runSpacing: 6,
        children: [
          Tag("Developer"),
          Tag("Flutter"),
          Tag("Frontend Dev"),
          Tag("Backend Dev"),
          Tag("React Native"),
          Tag("Vue"),
          Tag("React Native"),
          Tag(".NET"),
          Tag("Javascript")
        ],
      );

      final cardDetailInfo = SizedBox(
        width: double.infinity,
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Tags",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 18)),
                const Padding(padding: EdgeInsets.all(5)),
                userTags
              ],
            ),
          ),
        ),
      );
      return cardDetailInfo;
    }

    Widget cardEducationInfo() {
      String univerisityName = "Universidad Peruana de Ciencias Aplicadas";
      String carrer = "Software Engineer";
      String date = "jun. 2019 - jun. 2024";

      final cardEducationInfo = SizedBox(
        width: double.infinity,
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Education",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 18)),
                const Padding(padding: EdgeInsets.all(5)),
                Column(
                  children: [
                    EducationDetailsItem(univerisityName, carrer, date),
                    EducationDetailsItem(univerisityName, carrer, date),
                    EducationDetailsItem(univerisityName, carrer, date),
                    EducationDetailsItem(univerisityName, carrer, date),
                    EducationDetailsItem(univerisityName, carrer, date),
                    EducationDetailsItem(univerisityName, carrer, date)
                  ],
                )
              ],
            ),
          ),
        ),
      );
      return cardEducationInfo;
    }

    Widget cardTechSkills(UserProfile currentUserProfile) {
      List<Widget> skills = [];
      for (var userTechSkill in currentUserProfile.userTechSkills) {
        skills.add(UserTechSkillItem(userTechSkill));
      }

      final cardTechSkill = Card(
        child: Container(
          padding: const EdgeInsets.all(10),
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Column",
                style: cardTitleStyle,
              ),
              Column(
                children: skills,
              ),
            ],
          ),
        ),
      );

      return cardTechSkill;
    }

    final all = SingleChildScrollView(
        child: FutureBuilder(
          future: currentUserProfile,
          builder: (context, snap) {
            if (snap.hasData) {
              var userProfile = snap.data!;
              return Column(
                children: [
                  cardMainInfo(userProfile),
                  cardAboutInfo(userProfile),
                  cardTechSkills(userProfile),
                  cardTagsInfo(),
                  cardEducationInfo()
            ],
          );
        }
        return const CircularProgressIndicator(strokeWidth: 60);
      },
    ));

    return all;
  }
}
