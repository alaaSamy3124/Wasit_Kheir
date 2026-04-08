import 'package:flutter/material.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

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
          "Teams & conditions",
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
          // child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person_search_rounded,
                    color: Color(0xFFB3B3B3),
                    size: 30,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Teams & conditions ",
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),

              // Text(
              //   "Last Updated: March 2026",
              //   style: TextStyle(
              //     fontSize: 20,
              //     fontWeight: FontWeight.w800,
              //     color: Color(0xFF000000),
              //   ),
              // ),

              // SizedBox(height: 20),
              Text(
                "Help us keep Wasset Kheir a safe and helpful community for everyone.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                ),
              ),

              SizedBox(height: 30),

              Text(
                "1. Be Honest",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(height: 20),

              Text(
                "Only report items you have actually lost or found. False reports waste community time and resources.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                ),
              ),

              SizedBox(height: 30),

              Text(
                "2. Respect Privacy",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(height: 20),

              Text(
                "When posting photos, try to avoid capturing sensitive personal information of others.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                ),
              ),

              SizedBox(height: 30),

              Text(
                "3. Safe Meetups",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(height: 20),

              Text(
                "When returning items, always meet in public, well-lit places. Bring a friend if possible.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(height: 30),

              Text(
                "4. No Harassment",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(height: 20),

              Text(
                "Treat all members with respect. Harassment, hate speech, or bullying will result in an immediate ban.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                ),
              ),
            ],
          ),
          // ),
        ),
      ),
    );
  }
}
