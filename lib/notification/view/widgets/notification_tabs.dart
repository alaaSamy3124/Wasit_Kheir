import 'package:flutter/material.dart';

class NotificationTabs extends StatelessWidget {
  final int selectedTab;
  final Function(int) onTabChanged;

  const NotificationTabs({
    super.key,
    required this.selectedTab,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          tabButton("ALL", 0),
          const SizedBox(width: 8),
          tabButton("Unread", 1),
          const SizedBox(width: 8),
          tabButton("Matches", 2),
        ],
      ),
    );
  }

  Widget tabButton(String text, int index) {
    return GestureDetector(
      onTap: () => onTabChanged(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),

        decoration: BoxDecoration(
          color: selectedTab == index ? Color(0xFF097CCD) : Color(0xFFD9D9D9),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: selectedTab == index ? Color(0xFFFFFFFF) : Color(0xFF000000),
          ),
        ),
      ),
    );
  }
}
