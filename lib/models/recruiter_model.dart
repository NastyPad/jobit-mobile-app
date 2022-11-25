
class Recruiter {
  late  int    recruiterId;
  late  String firstname;
  late  String lastname;
  Recruiter({
    required this.recruiterId,
    required this.firstname,
    required this.lastname,
  });

  static Recruiter objJson(Map<String, dynamic> json){
    return Recruiter(
      recruiterId: json['recruiterId'] as int,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
    );
  }
}
class listRecruiter{
  static List<Recruiter> listaRecruiter(List<dynamic> listJson){
    List<Recruiter> listDoRecruiter = [];
    if (listJson != null){
      for (var item in listJson){
        final sample = Recruiter.objJson(item);
        listDoRecruiter.add(sample);
      }
    }
    return listDoRecruiter;
  }
}
