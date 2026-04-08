import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),

      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xFF000000)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Contact Us",
          style: TextStyle(
            color: Color(0xFF000000),
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0XFFD9D9D9)),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: const Icon(
                  Icons.email,
                  size: 100,
                  color: Color(0xFF097CCD),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Contact Us",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                  color: Color(0xFF000000),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "We'd love to hear from you. Send us a message and we'll respond as soon as possible.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                ),
                textAlign: TextAlign.start,
              ),

              const SizedBox(height: 40),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Subject",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF000000),
                    ),
                  ),

                  //   ],
                  // ),
                  const SizedBox(height: 5),

                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      hintText: "Subject...",
                      hintStyle: TextStyle(
                        color: Color(0xFF817878),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),

                      filled: true,
                      fillColor: const Color(0xFFFFFFFF),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Message",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF000000),
                    ),
                  ),

                  //   ],
                  // ),
                  const SizedBox(height: 5),

                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      hintText: "How Can We Help..?",
                      hintStyle: TextStyle(
                        color: Color(0xFF817878),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),

                      filled: true,
                      fillColor: const Color(0xFFFFFFFF),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
                      ),
                    ),
                    maxLines: 4,
                  ),
                ],
              ),
              // const Spacer(),
              SizedBox(height: 60),

              SizedBox(
                width: double.infinity,
                height: 43,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E88E5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Send Message",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
