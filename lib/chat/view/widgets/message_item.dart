import 'package:flutter/material.dart';

class messageItem extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String image;

  messageItem({
    required this.name,
    required this.message,
    required this.time,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(radius: 30, backgroundImage: AssetImage(image)),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF097CCD),
                  ),
                ),

                const SizedBox(height: 4),

                Row(
                  children: [
                    Expanded(
                      child: Text(
                        message,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF817878),
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    const SizedBox(width: 8),

                    Text(
                      time,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF817878),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
