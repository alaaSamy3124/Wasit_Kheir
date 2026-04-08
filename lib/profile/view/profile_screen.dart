import 'package:flutter/material.dart';
import 'package:wasit_kheir/profile/view/widgets/account_section.dart';
import 'package:wasit_kheir/profile/view/widgets/profile_header.dart';
import 'package:wasit_kheir/profile/view/widgets/report_card.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 20,
            color: Color(0xFF000000),
          ),
        ),
        title: const Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20,
            color: Color(0xFF000000),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xFF817878)),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                ProfileHeader(),
                SizedBox(height: 20),
                ReportCard(),
                SizedBox(height: 20),
                AccountSection(),
                Divider(thickness: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
