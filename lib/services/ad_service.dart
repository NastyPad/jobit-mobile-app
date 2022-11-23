import '../models/add_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AdService {
  static Future<List<Ad>> getAllAds() async {
    final response =
    await http.get(Uri.parse("https://637d486f9c2635df8f850a80.mockapi.io/api/AdsJobCompany"));

    if (response.statusCode == 200) {
      final responseJSON = json.decode(response.body);
      final allAd = listAd.listaAd(responseJSON);
      return allAd;
    }
    return <Ad>[];
  }

  Future<bool> addItem(Map data) async {
    bool status = false;

    //Add the item to the database, call the API
    http.Response response = await http
        .post(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
        body: jsonEncode(data),
        headers: {
          'Content-type':'application/json'
        }
    );

    if(response.statusCode==201)
    {
      status=response.body.isNotEmpty;
    }

    return status;
  }
}