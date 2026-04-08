import 'package:flutter/material.dart';
import 'package:wasit_kheir/chat/view/widgets/message_item.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
  final List<Map<String, String>> messages = [
    {
      "name": "Marwa Raafat",
      "message": "You: I found your black bag......",
      "time": "1h",
      "image": "assets/images/profile_img.png",
    },
    {
      "name": "Aya",
      "message": "You: I found your keys......",
      "time": "2h",
      "image": "assets/images/profile_img.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 15,
            color: Color(0xFF000000),
          ),
        ),
        title: const Text(
          "Messages",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20,
            color: Color(0xFF000000),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(bottom: 60, left: 20, right: 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xFF817878)),
          ),

          child: ListView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: messages.length,
            itemBuilder: (context, index) {
              final msg = messages[index];

              return messageItem(
                name: msg["name"]!,
                message: msg["message"]!,
                time: msg["time"]!,
                image: msg["image"]!,
              );
            },
          ),
        ),
      ),
    );
  }
}
