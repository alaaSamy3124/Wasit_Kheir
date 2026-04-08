import 'package:flutter/material.dart';

class EmptyChatScreen extends StatelessWidget {
  const EmptyChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  const Icon(Icons.arrow_back_ios_new, color: Colors.black),

                  const SizedBox(width: 8),

                  const CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),

                  const SizedBox(width: 10),

                  const Text(
                    "Marwa Raafat",
                    style: TextStyle(color: Color(0xff1E73B7), fontSize: 18),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Marwa Raafat",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),

                  const SizedBox(height: 10),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xff1E73B7)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "view profile",
                      style: TextStyle(color: Color(0xff1E73B7)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Type a message.....",

                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 14,
                  ),

                  suffixIcon: const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.sentiment_satisfied_alt,
                      color: Color(0xff1E73B7),
                    ),
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Color(0xff1E73B7)),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Color(0xff1E73B7)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
