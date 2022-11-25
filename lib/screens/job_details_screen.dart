import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/widgets/job_detail.dart';
import 'package:jobit_mobile_app/widgets/button_text_icon.dart';
import 'package:jobit_mobile_app/widgets/user_items.dart';
import 'package:jobit_mobile_app/widgets/company_item.dart';

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
        height: 50,
        width: 50,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          child: Image(image: NetworkImage(icon)),
        ),
      );

      final companyShortInfo = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Google Inc.", style: TextStyle(fontSize: 12)),
          Row(
            children: [
              Text(
                "Lima, Peru",
                style: TextStyle(fontSize: 12),
              ),
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
                Text("Python Data Scientist", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                Padding(padding: EdgeInsets.all(6)),
                Row(
                  children: [
                    photoCompany,
                    Padding(padding: EdgeInsets.all(3)),
                    companyShortInfo
                  ],
                ),
                Padding(padding: EdgeInsets.all(6)),
                Text("Details",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black54)),
                Padding(padding: EdgeInsets.all(6)),
                details,
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ButtonTextIcon(Colors.amber, Colors.black, "Postulate",
                      Icons.person_add_alt_1_rounded),
                  Padding(padding: EdgeInsets.all(12)),
                  ButtonTextIcon(
                      Colors.black, Colors.amber, "Save", Icons.save),
                ])
              ],
            ),
          ),
        ),
      );
      return _jobSummary;
    }

    Widget jobExtraInfo() {
      final _jobDescription = Container(
        child: Card(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recruiters",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.grey),
                ),
                Column(
                  children: [RecruiterBanner(), RecruiterBanner()],
                )
              ],
            ),
          ),
        ),
      );

      return _jobDescription;
    }

    Widget jobDescription() {
      final _jobDescription = Container(
        child: Card(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Job Description",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Text(
                "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
                style: TextStyle(fontSize: 13),
              )
            ]),
          ),
        ),
      );
      return _jobDescription;
    }

    Widget companyDescription() {
      final _companyDescription = Container(
        child: Card(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "About company",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
              Padding(padding: EdgeInsets.all(10)),
              CompanyItem(),
              Padding(padding: EdgeInsets.all(5)),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", style: TextStyle(fontSize: 13),)
            ]),
          ),
        ),
      );
      return _companyDescription;
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          jobSummary(),
          jobExtraInfo(),
          jobDescription(),
          companyDescription()
        ],
      ),
    );
  }
}
