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

  Future<bool> postAd(Map data) async {
    bool status = false;

    //Add the item to the database, call the API
    http.Response response = await http
        .post(
        Uri.parse('https://637d486f9c2635df8f850a80.mockapi.io/api/AdsJobCompany'),
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

  Future<bool> updateAd(Map data, String adId) async {
    bool status = false;

    //Update the item, call the API
    http.Response response = await http
        .put(
        Uri.parse('https://637d486f9c2635df8f850a80.mockapi.io/api/AdsJobCompany/$adId'),
        body: jsonEncode(data),
        headers: {
          'Content-type':'application/json'
        }
    );

    if(response.statusCode==200)
    {
      status=response.body.isNotEmpty;
    }

    return status;
  }


  Future<bool> deleteAd(String adId) async {
    bool status = false;

    //Delete the item from the Database
    http.Response response=await http.delete(Uri.parse('https://637d486f9c2635df8f850a80.mockapi.io/api/AdsJobCompany/$adId'),);

    if(response.statusCode==200)
    {
      status=true;
    }

    return status;
  }
}