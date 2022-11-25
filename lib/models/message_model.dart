
class Message {
  late  int whoSentIt;
  late  String messageContent;
  late  String timeSent;

  Message({required this.whoSentIt, required this.messageContent, required this.timeSent});

  static Message objJson(Map<String, dynamic> json){
    return Message(
        whoSentIt: json['whoSentIt'] as int,
        messageContent: json['messageContent'] as String,
        timeSent: json['timeSent'] as String,
    );
  }
}
class listMessage{
  static List<Message> listaMessage(List<dynamic> listJson){
    List<Message> listDoMessage = [];
    if (listJson != null){
      for (var item in listJson){
        final sample = Message.objJson(item);
        listDoMessage.add(sample);
      }
    }
    return listDoMessage;
  }
}
