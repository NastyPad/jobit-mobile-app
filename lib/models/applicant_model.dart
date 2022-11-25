
class Applicant {
  late  int    applicantId;
  late  String username;
  late  String firstname;
  late  String lastname;
  late  String password;
  late  String email;
  Applicant({
    required this.applicantId,
    required this.username,
    required this.firstname,
    required this.lastname,
    required this.password,
    required this.email,
  });

  static Applicant objJson(Map<String, dynamic> json){
    return Applicant(
      applicantId: json['applicantId'] as int,
      username: json['username'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
    );
  }
}
class listApplicant{
  static List<Applicant> listaApplicant(List<dynamic> listJson){
    List<Applicant> listDoApplicant = [];
    if (listJson != null){
      for (var item in listJson){
        final sample = Applicant.objJson(item);
        listDoApplicant.add(sample);
      }
    }
    return listDoApplicant;
  }
}
