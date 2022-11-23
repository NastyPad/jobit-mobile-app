class Ad {
  Ad({
    required this.title,
    required this.description,
    required this.salary,
    required this.date,
    required this.img,
    required this.id
  });

  String title;
  String description;
  int salary;
  String date;
  String img;
  String id;

  static Ad objJson(Map<String, dynamic> json){
    return Ad(
        title: json['title'] as String,
        description: json['description'] as String,
        salary: json['salary'] as int,
        date: json['date'] as String,
        img: json['img'] as String,
        id: json['id'] as String
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