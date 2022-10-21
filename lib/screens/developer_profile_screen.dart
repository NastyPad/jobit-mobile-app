import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/widgets/tag.dart';
import 'package:jobit_mobile_app/widgets/education_item.dart';
import 'package:collection/collection.dart';

class DeveloperProfileScreen extends StatefulWidget {
  String userName;
  String userBio;
  String userPhoto;
  List<String> userSpecialities;

  DeveloperProfileScreen(
      this.userName, this.userBio, this.userSpecialities, this.userPhoto,
      {Key? key})
      : super(key: key);

  @override
  State<DeveloperProfileScreen> createState() => _DeveloperProfileScreenState();
}

class _DeveloperProfileScreenState extends State<DeveloperProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final userPhoto = Container(
      width: 140.0,
      height: 140.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(super.widget.userPhoto), fit: BoxFit.cover)),
    );

    Widget cardMainInfo() {
      final userPhoto = Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(super.widget.userPhoto),
                fit: BoxFit.cover)),
      );

      final userProfileTitle = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 280,
            child: Text(
              widget.userName,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
          ),
          const Icon(Icons.verified, color: Colors.blueAccent)
        ],
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

      final _cardMainInfo = Container(
        child: Card(
          child: Column(
            children: [
              userPhoto,
              userProfileTitle,
              Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0)),
              userProfileExtra,
              Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0))
            ],
          ),
        ),
      );
      return _cardMainInfo;
    }

    Widget cardAboutInfo() {
      final _cardAboutInfo = Container(
        child: Card(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "About",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                const Padding(padding: EdgeInsets.all(5)),
                Text(widget.userBio)
              ],
            ),
          ),
        ),
      );
      return _cardAboutInfo;
    }

    Widget cardDetailsInfo() {
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

      final _cardDetailInfo = Container(
        width: double.infinity,
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Details",
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
      return _cardDetailInfo;
    }

    Widget cardEducationInfo() {

      String univerisityName = "Universidad Peruana de Ciencias Aplicadas";
      String carrer = "Software Engineer";
      String date = "jun. 2019 - jun. 2024";

      final _cardEducationInfo = Container(
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
      return _cardEducationInfo;
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          cardMainInfo(),
          cardAboutInfo(),
          cardDetailsInfo(),
          cardEducationInfo()
        ],
      ),
    );
  }
}
