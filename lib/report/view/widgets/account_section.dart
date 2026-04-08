import 'package:flutter/material.dart';

class AccountSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color(0xFFB3B3B3)),
        ),
        child: Column(
          children: [
            /// Account Settings
            Padding(
              padding: const EdgeInsets.all(2),
              child: Row(
                children: [
                  Icon(Icons.settings, color: Color(0xFF000000)),
                  SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      "Account Settings",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  // Icon(Icons.arrow_forward_ios, size: 16),
                ],
              ),
            ),

            Divider(height: 1),

            /// Log Out
            Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  Icon(Icons.logout, color: Color(0xFFFF393C)),
                  SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      "Log Out",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFF393C),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
