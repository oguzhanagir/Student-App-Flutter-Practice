import 'dart:math';

import 'package:flutter/material.dart';
import 'package:student_app/repository/message_repository.dart';


class MessagePage extends StatefulWidget {
  final MessageRepository messageRepository;
  const MessagePage(this.messageRepository, {Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mesaj Sayfası")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemBuilder: (context, index) {
                bool amI = Random().nextBool();
                return Align(
                  alignment: amI ? Alignment.centerRight : Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Color(0xFFaad2d3),
                          borderRadius: BorderRadius.all(Radius.circular(11))),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Merhaba Nasılınız?",
                          style: TextStyle(
                            color: Color(0xFF1A1D1E),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  print("İkon Button");
                },
                icon: Icon(Icons.image_search_rounded),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    )),
              )),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: ElevatedButton(
                  onPressed: () {
                    print("Mesaj");
                  },
                  child: const Text("Gönder"),

                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
