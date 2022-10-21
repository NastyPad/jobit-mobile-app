import 'package:flutter/material.dart';

class DeveloperProfileScreen extends StatefulWidget {
  String userName;
  String userBio;

  DeveloperProfileScreen(this.userName, this.userBio, {Key? key})
      : super(key: key);

  @override
  State<DeveloperProfileScreen> createState() => _DeveloperProfileScreenState();
}

class _DeveloperProfileScreenState extends State<DeveloperProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final profileTitle = Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(super.widget.userName,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 28,
                  fontWeight: FontWeight.w400)),
          Padding(padding: EdgeInsets.only(right: 10.0)),
          Icon(Icons.verified, color: Colors.blue)
        ],
      ),
    );

    final userPhoto = Container(
      width: 140.0,
      height: 140.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.pexels.com/photos/735911/pexels-photo-735911.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              fit: BoxFit.cover)),
    );

    final mainProfileInfo = Container(
        width: double.infinity,
        margin: EdgeInsets.all(10.0),
        child: Card(
          child: Column(
            children: [
              userPhoto,
              Padding(padding: EdgeInsets.only(bottom: 10.0)),
              profileTitle
            ],
          ),
        ));

    final aboutProfileInfo = Container(
        width: double.infinity,
        margin: EdgeInsets.all(10.0),
        child: Card(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About",
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10.0)),
                Text(super.widget.userBio)
              ],
            ),
          ),
        )
    );

    final detailProfileInfo = Container(
        width: double.infinity,
        margin: EdgeInsets.all(10.0),
        child: Card(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About",
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10.0)),
                Text(super.widget.userBio)
              ],
            ),
          ),
        )
    );

    final developerProfileScreenState = Container(
      child: Column(
        children: [mainProfileInfo, detailProfileInfo, aboutProfileInfo],
      ),
    );
    return developerProfileScreenState;
  }
}
