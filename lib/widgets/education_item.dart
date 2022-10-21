import 'package:flutter/material.dart';

class EducationDetailsItem extends StatefulWidget {
  String institutionName;
  String careerName;
  String date; //This will change
  String photoInstitution =
      "https://upload.wikimedia.org/wikipedia/commons/f/fc/UPC_logo_transparente.png";

  EducationDetailsItem(this.institutionName, this.careerName, this.date,
      {Key? key})
      : super(key: key);

  @override
  State<EducationDetailsItem> createState() => _EducationDetailsItemState();
}

class _EducationDetailsItemState extends State<EducationDetailsItem> {
  @override
  Widget build(BuildContext context) {
    final educationInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.institutionName,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        Text(widget.careerName, style: TextStyle(fontSize: 13)),
        Text(widget.date, style: TextStyle(fontSize: 13, color: Colors.grey))
      ],
    );

    final photoInstitution = Container(
      child: Image(
        width: 60,
        height: 60,
        image: NetworkImage(widget.photoInstitution),
      ),
    );

    return Container(
      child: Row(
        children: [
          photoInstitution, Padding(padding: EdgeInsets.all(3)), educationInfo
        ],
      ),
    );
  }
}
