import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/models/user_tech_skill.dart';

class UserTechSkillItem extends StatefulWidget {
  UserTechSkill userTechSkill;

  UserTechSkillItem(this.userTechSkill, {Key? key}) : super(key: key);

  @override
  State<UserTechSkillItem> createState() => _UserTechSkillItemState();
}

class _UserTechSkillItemState extends State<UserTechSkillItem> {
  @override
  Widget build(BuildContext context) {
    final techLogoImage = Container(
      child: Image(
        image: NetworkImage(widget.userTechSkill.techSkill.photoUrl),
        width: 30,
      ),
    );

    final techData = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.userTechSkill.techSkill.techName,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Text("Experience: ${widget.userTechSkill.experienceYears} years")
        ],
      ),
    );

    final item = Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          techLogoImage,
          const Padding(padding: EdgeInsets.all(10)),
          techData
        ],
      ),
    );
    return item;
  }
}
