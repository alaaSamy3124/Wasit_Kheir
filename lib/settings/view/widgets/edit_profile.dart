import 'package:flutter/material.dart';

class ProfileInformationScreen extends StatelessWidget {
  const ProfileInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),

      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Account settings",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: Colors.grey.shade300),
          ),

          child: Column(
            children: [
              /// TITLE
              Row(
                children: const [
                  Icon(
                    Icons.person_rounded,
                    color: Color(0xFFB3B3B3),
                    size: 50,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Profile Information",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                ],
              ),

              const SizedBox(height: 15),
              Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: const Color(0xFF1E88E5),
                    child: const Text(
                      "FI",
                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
                    ),
                  ),
                  const SizedBox(width: 10),

                  const Text(
                    "Profile Picture",
                    style: TextStyle(
                      color: Color(0xFF817878),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              buildField("Full Name", "Fatma Ibrahim", Icons.person),
              const SizedBox(height: 6),

              buildField("Phone Number", "+201205993496", Icons.phone),
              const SizedBox(height: 6),

              buildField(
                "Email Address",
                "fattomibrahim@gmail.com",
                Icons.email,
              ),
              const SizedBox(height: 6),

              buildField(
                "City / Governorate",
                "Elmahalla Elkubra / Elgharbia",
                Icons.location_on,
              ),

              const Spacer(),
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
                    "save changes",
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

  Widget buildField(String title, String hint, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 30, color: Color(0xFF000000)),
            const SizedBox(width: 6),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),

        const SizedBox(height: 2),

        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            hintText: hint,
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
    );
  }
}
