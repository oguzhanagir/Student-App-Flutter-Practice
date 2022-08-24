class MessageRepository{
  final List<Message> messages = [
    Message("Merhaba", "Oğuzhan", DateTime.now()),
    Message("Nasılsın", "Oğuzhan", DateTime.now()),
    Message("Orada Mısın Heey", "Oğuzhan", DateTime.now()),
  ];

}

class Message{
  String Text;
  String Sender;
  DateTime Time;

  Message(this.Text, this.Sender, this.Time);

}