import 'dart:math';
class BackendService{
  static Future<List> getSuggestion(String data) async{
    await Future.delayed(Duration(seconds: 1));
    return List.generate(3, (index){
      return {'name':data + index.toString(), 'price': Random().nextInt(100)};
    });
  }
}