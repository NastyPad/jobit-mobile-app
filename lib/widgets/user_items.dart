import 'package:flutter/material.dart';

abstract class PersonBanner extends StatelessWidget {
  String userPhoto =
      "https://media-exp1.licdn.com/dms/image/D5603AQEYVI-h2C41Qw/profile-displayphoto-shrink_800_800/0/1662652250825?e=1671667200&v=beta&t=wEvsi6kAk_YXTsPT4hwyk7Jp6tQZn9RJ4M3r4mKRVOM";

  PersonBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context);

  Widget drawBanner();
}

class RecruiterBanner extends PersonBanner {
  RecruiterBanner() : super();

  @override
  Widget build(BuildContext context) {
    return drawBanner();
  }

  @override
  Widget drawBanner() {
    final photo = Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: NetworkImage(userPhoto))),
    );

    final _userBanner = Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: [
          Row(
            children: [
              photo,
              Padding(padding: EdgeInsets.all(5)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Jesus Pacheco",
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  Text("Google Data Scientist",
                      style: TextStyle(fontSize: 12)),
                  Text("Recruiter",
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.send_rounded,
              size: 15,
              color: Colors.blueGrey,
            ),
            style: ButtonStyle(
                overlayColor: MaterialStatePropertyAll(Colors.grey.shade200),
                animationDuration: Duration(milliseconds: 500),
                elevation: MaterialStatePropertyAll(0),
                backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                shape: MaterialStatePropertyAll(
                    CircleBorder(side: BorderSide(color: Colors.blueGrey)))),
          )
        ],
      ),
    );

    return _userBanner;
  }
}
