import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

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
          "Privacy Policy",
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
                  Icon(Icons.description, color: Color(0xFFB3B3B3), size: 30),
                  SizedBox(width: 8),
                  Text(
                    "Privacy Policyord",
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),

              Text(
                "Last Updated: March 2026",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF000000),
                ),
              ),

              SizedBox(height: 20),

              Text(
                "At Wasst Kheir, we take your privacy seriously. This policy describes how we collect, use, and protect your personal information.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                ),
              ),

              SizedBox(height: 30),

              Text(
                "1. Information We Collect",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(height: 20),

              Text(
                "We collect information you provide directly to us such as your name, email, and photos.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                ),
              ),

              SizedBox(height: 30),

              Text(
                "2. How We Use Data",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(height: 20),

              Text(
                "Your data is used to improve our services and help match lost and found items.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                ),
              ),

              SizedBox(height: 30),

              Text(
                "3. Location Data",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(height: 20),

              Text(
                "We use GPS data to show items near you. You can disable this anytime.",
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
