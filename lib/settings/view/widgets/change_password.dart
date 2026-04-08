import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

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
          "Change Password",
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
              Row(
                children: const [
                  Icon(Icons.lock_outline, color: Color(0xFFB3B3B3), size: 45),
                  SizedBox(width: 10),
                  Text(
                    "Change Password",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              buildPasswordField("Current Password"),
              const SizedBox(height: 6),

              buildPasswordField("New Password"),
              const SizedBox(height: 6),

              buildPasswordField("Confirm New Password"),

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
                    "Update Password",
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

  Widget buildPasswordField(String hint) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        hintText: hint,
        hintStyle: TextStyle(
          color: Color(0xFFB3B3B3),
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: const Color(0xFFFFFFFF),
        suffixIcon: const Icon(Icons.visibility_off, color: Color(0xFFD9D9D9)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
        ),
      ),
    );
  }
}
