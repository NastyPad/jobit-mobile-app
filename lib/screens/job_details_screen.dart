import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/widgets/job_detail.dart';

class JobDetailsScreen extends StatefulWidget {
  String jobName;

  JobDetailsScreen(this.jobName, {Key? key}) : super(key: key);

  @override
  State<JobDetailsScreen> createState() => _JobDetailsScreenState();
}

class _JobDetailsScreenState extends State<JobDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    String icon =
        "https://rotulosmatesanz.com/wp-content/uploads/2017/09/2000px-Google_G_Logo.svg_.png";
    Widget jobSummary() {
      final photoCompany = Container(
        height: 50, width: 50,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          child: Image(image: NetworkImage(icon)),
        ),
      );

      final jobShortInfo = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Google Inc.", style: TextStyle(fontSize: 12)),
          Row(
            children: [
              Text("Lima, Peru", style: TextStyle(fontSize: 12),),
              Padding(padding: EdgeInsets.all(2)),
              Text("(En Remoto)", style: TextStyle(fontSize: 12))
            ],
          )
        ],
      );

      final details = Column(
        children: [
          JobDetail("Media jornada", Icons.work_rounded),
          JobDetail("Entre 1 y 10 empleados", Icons.person),
          JobDetail("Remoto", Icons.settings_remote)
        ],
      );

      final _jobSummary = Container(
        child: Card(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    photoCompany,
                    Padding(padding: EdgeInsets.all(3)),
                    jobShortInfo
                  ],
                ),
                Padding(padding: EdgeInsets.all(6)),
                Text("Details", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black54)),
                details
              ],
            ),
          ),
        ),
      );
      return _jobSummary;
    }

    return Container(
      child: Column(
        children: [
          jobSummary()
        ],
      ),
    );
  }
}
