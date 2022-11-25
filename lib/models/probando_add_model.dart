class Ad {
  Ad({
    required this.postJobId,
    required this.jobName,
    required this.description,
    required this.salary,
    required this.available,
    required this.postJobTitle,
    required this.dateTime,
  });

  int postJobId;
  String jobName;
  String description;
  int salary;
  bool available;
  String postJobTitle;
  String dateTime;

  static Ad objJson(Map<String, dynamic> json){
    return Ad(
        postJobId: json['postJobId'] as int,
        jobName: json['jobName'] as String,
        description: json['description'] as String,
        salary: json['salary'] as int,
        available: json['available'] as bool,
        postJobTitle: json['postJobTitle'] as String,
        dateTime: json['dateTime'] as String,
    );
  }
}

class listAd{
  static List<Ad> listaAd(List<dynamic> listJson){
    List<Ad> listDoAd = [];
    if (listJson != null){
      for (var item in listJson){
        final sample = Ad.objJson(item);
        listDoAd.add(sample);
      }
    }
    return listDoAd;
  }
}