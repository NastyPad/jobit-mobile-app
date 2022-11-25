
class Repo {
  late   int    id;
  late  String name;
  late  String html_url;
  late  bool private;
  late  String? description;

  Repo({
    required this.id,
    required this.name,
    required this.html_url,
    required this.private,
    required this.description,
  });

  static Repo objJson(Map<String, dynamic> json){
    return Repo(
      id: json['id'] as int,
      name: json['name'] as String,
      html_url: json['html_url'] as String,
      private: json['private'] as bool,
      description: json['description'] as String?,
    );
  }
}
class listRepo{
  static List<Repo> listaRepo(List<dynamic> listJson){
    List<Repo> listDoRepo = [];
    if (listJson != null){
      for (var item in listJson){
        final sample = Repo.objJson(item);
        listDoRepo.add(sample);
      }
    }
    return listDoRepo;
  }
}
