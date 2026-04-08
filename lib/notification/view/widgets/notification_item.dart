import 'package:flutter/material.dart';
import 'package:wasit_kheir/notification/models/notifications_data.dart';

class NotificationItem extends StatelessWidget {
  final AppNotification notification;

  const NotificationItem({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(notification.icon, color: Color(0xFF097CCD), size: 40),
                  SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          notification.title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF000000),
                          ),
                        ),

                        SizedBox(height: 4),
                        Text(
                          notification.subtitle,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF000000),
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          notification.time,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (!notification.isRead)
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Color(0xFF097CCD),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
          ],
        ),
        Divider(thickness: 1, color: Color(0xFFCDCDCD), height: 1),
      ],
    );
  }
}
