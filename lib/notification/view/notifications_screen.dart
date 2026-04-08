import 'package:flutter/material.dart';
import 'package:wasit_kheir/notification/models/notifications_data.dart';
import 'package:wasit_kheir/notification/view/widgets/notification_item.dart';
import 'widgets/notification_tabs.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  List<AppNotification> notifications = [
    AppNotification(
      title: "Item Match Found!",
      subtitle: '''A similar keys were found near your area 
(Main Street, Brooklyn)''',
      time: "1 hour ago",
      isRead: false,
      icon: Icons.location_on,
    ),
    AppNotification(
      title: "New Message",
      subtitle: "Marwa Raafat sent you a message about your lost wallet ",
      time: "3 hours ago",
      isRead: false,
      icon: Icons.chat_bubble_outline,
    ),
    AppNotification(
      title: "Item marked as founded",
      subtitle: "Your found item report has been marked as founded",
      time: "5 hours ago",
      isRead: true,
      icon: Icons.task_rounded,
    ),
    AppNotification(
      title: "Location Alert!",
      subtitle: "Aphone was reported lost near 5th Avenue Coffee Shop",
      time: "9 hours ago",
      isRead: true,
      icon: Icons.location_on,
    ),
  ];
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    List<AppNotification> filteredNotifications;
    if (selectedTab == 0) {
      filteredNotifications = notifications;
    } else if (selectedTab == 1) {
      filteredNotifications = notifications.where((n) => !n.isRead).toList();
    } else {
      filteredNotifications = notifications
          .where((n) => n.title.toLowerCase().contains("match"))
          .toList();
    }
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 15,
            color: Color(0xFF000000),
          ),
        ),
        title: const Text(
          "Notifications",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20,
            color: Color(0xFF000000),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            NotificationTabs(
              selectedTab: selectedTab,
              onTabChanged: (index) {
                setState(() {
                  selectedTab = index;
                });
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xFF817878)),
                  ),
                  child: ListView.builder(
                    itemCount: filteredNotifications.length,
                    itemBuilder: (context, index) {
                      return NotificationItem(
                        notification: filteredNotifications[index],
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF097CCD),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  "Mark All as Read",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
