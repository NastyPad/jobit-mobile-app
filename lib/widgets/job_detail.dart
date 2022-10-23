import 'package:flutter/material.dart';

class JobDetail extends StatelessWidget {
  String workingDayModality;
  var icon = Icons.abc;

  JobDetail(this.workingDayModality, this.icon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _jobDetail = Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey,
            size: 20,
          ),
          Padding(padding: EdgeInsets.all(4)),
          Text(workingDayModality,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 12))
        ],
      ),
    );

    return _jobDetail;
  }
}
