import 'package:flutter/material.dart';

class ReportCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Reports",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: Color(0xFF097CCD),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Color(0xFFB3B3B3)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(15),
                      ),
                      child: Image.asset(
                        "assets/images/profile_img.png",
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFFF4646),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          "Lost",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wallet",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF097CCD),
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Brown wallet with ID card and credit card inside lost near Central Park",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(),

                /// LOCATION + DATE
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 16,
                            color: Color(0xFF797979),
                          ),
                          SizedBox(width: 4),
                          Text(
                            "Central Park, New York",
                            style: TextStyle(
                              color: Color(0xFF797979),
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            size: 16,
                            color: Color(0xFF797979),
                          ),
                          SizedBox(width: 4),
                          Text(
                            "Monday, December 8, 2025",
                            style: TextStyle(
                              color: Color(0xFF797979),
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Divider(),

                /// REPORTED BY
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Row(
                    children: [
                      Icon(Icons.person, size: 16, color: Color(0xFFB3B3B3)),
                      SizedBox(width: 6),
                      Text(
                        "Fatma Ibrahim",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF097CCD),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(),

                /// COMMENT + CONNECT
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.comment_outlined, size: 20),
                          SizedBox(width: 6),
                          Text(
                            "Comment",
                            style: TextStyle(
                              color: Color(0XFF000000),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.chat_bubble_outline, size: 20),
                          SizedBox(width: 6),
                          Text(
                            "Connect",
                            style: TextStyle(
                              color: Color(0XFF000000),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
