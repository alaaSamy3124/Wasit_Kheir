import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xFF817878)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Color(0xFFFFFFFF),
                  child: Icon(Icons.person, color: Color(0xFFB3B3B3), size: 40),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fatma Ibrahim ",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF097CCD),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Member since Dec 2026",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF797979),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 6),
            Row(
              children: [
                Icon(Icons.email_outlined, size: 20, color: Color(0xFF817878)),
                SizedBox(width: 4),
                Expanded(
                  child: Text(
                    "fatmasarhan345@gmail.com",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF817878),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 14),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 20,
                  color: Color(0xFF817878),
                ),
                SizedBox(width: 4),
                Expanded(
                  child: Text(
                    "Egypt, Elgharbia,Elmahalla Elkubra",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF817878),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
