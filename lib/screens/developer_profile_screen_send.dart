import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/services/project_service.dart';
import 'package:jobit_mobile_app/widgets/tag.dart';
import 'package:jobit_mobile_app/widgets/education_item.dart';
import 'package:jobit_mobile_app/models/user_profile_model.dart';
// import 'package:jobit_mobile_app/services/user_profile_service.dart';
import 'package:jobit_mobile_app/widgets/techskills/user_tech_skill_item.dart';
import 'package:jobit_mobile_app/widgets/button_text_icon.dart';
import 'package:jobit_mobile_app/screens/projects_details.dart';

class DeveloperProfileScreenSend extends StatefulWidget {
  String userBio;
  String userPhoto;
  int id;
  final List<String> userSpecialities;

  DeveloperProfileScreenSend(this.id,
      this.userBio, this.userSpecialities, this.userPhoto,
      {Key? key})
      : super(key: key);

  @override
  State<DeveloperProfileScreenSend> createState() =>
      _DeveloperProfileScreenSendState();
}

class _DeveloperProfileScreenSendState
    extends State<DeveloperProfileScreenSend> {
  // UserAgentClient userAgentClient = UserAgentClient();
  // late Future<User> developer;

  ProjectService projectService = ProjectService();
  List finalProjects = [];

  List projects = [
    {
      'nameProject': 'Genshi Impact',
      'shortDescription': 'Juego para celulares',
      'imageProject':
          'https://i.pinimg.com/originals/b4/f2/aa/b4f2aab8fcb2ad1eb291bcea536c4269.gif',
      'imageEvidence':
          'https://juncotic.com/wp-content/uploads/2016/09/animacion4.gif',
      'descriptionProject':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
    },
    {
      'nameProject': 'God OF War',
      'shortDescription': 'Juego para PS5',
      'imageProject':
          'https://cdn1.epicgames.com/offer/3ddd6a590da64e3686042d108968a6b2/EGS_GodofWar_SantaMonicaStudio_S2_1200x1600-fbdf3cbc2980749091d52751ffabb7b7_1200x1600-fbdf3cbc2980749091d52751ffabb7b7',
      'imageEvidence':
          'https://preview.redd.it/xns02leh3rm41.jpg?auto=webp&s=b6da8b89d95dcf0d38d873f04cf515d4db6c1a58',
      'descriptionProject':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
    }
  ];
  @override
  void initState() {
    // developer = userAgentClient.getUserById(0);
    loadData();
    super.initState();
  }

  loadData() async {
    finalProjects = await projectService.getProjectsById(widget.id);

    setState(() {
      finalProjects = finalProjects;
    });
  }

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
        margin: EdgeInsets.only(top: 35),
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
        mainAxisSize: MainAxisSize.max,
        children: [
          // SizedBox(
          //     child: FutureBuilder<User>(
          //       // future: developer,
          //       builder: (context, snap) {
          //         if (snap.hasData) {
          //           return Text("${snap.data!.firstName} ${snap.data!.lastName}", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20));
          //         }
          //         return Text("Error");
          //       },
          //     )),
          Padding(padding: EdgeInsets.all(5)),
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

      String sample =
          "https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29kZSUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80";

      final _cardMainInfo = Container(
        child: Card(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
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
          for (var i in widget.userSpecialities) Tag(i),
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

    Widget cardProjects() {
      final userTags = Wrap(
        spacing: 3,
        runSpacing: 6,
        children: [
          for (var i in finalProjects)
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.white,
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.album, size: 40),
                    title:
                        Text(i.projectName, style: TextStyle(fontSize: 15.0)),
                    subtitle:
                        Text(i.description!, style: TextStyle(fontSize: 14.0)),
                    trailing: ElevatedButton(
                      child: Text(
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w400),
                          'Details'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Scaffold(
                                      appBar: AppBar(
                                        title: Text(i.projectName),
                                        backgroundColor:
                                            Color.fromARGB(255, 255, 191, 0),
                                      ),
                                      body: projects_details(i),
                                    )

                                //projects_details('text')
                                //
                                ));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
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
                const Text("Projects",
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

    return SingleChildScrollView(
      child: Column(
        children: [
          cardMainInfo(),
          cardAboutInfo(),
          cardDetailsInfo(),
          cardEducationInfo(),
          cardProjects(),
          SizedBox(
            child: ButtonTextIcon(
                Colors.amber, Colors.black, 'ENVIAR MENSAJE', Icons.send),
            width: 200,
          )
        ],
      ),
    );
  }
}
