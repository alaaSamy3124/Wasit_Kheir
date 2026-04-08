import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

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
          "Account settings",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20,
            color: Color(0xFF000000),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          /// Account
          const Text(
            "Account",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
          ),

          const SizedBox(height: 10),

          Container(
            decoration: _boxDecoration(),
            child: Column(
              children: [
                SettingsRow(
                  icon: Icons.person,
                  title: "Edit Profile",
                  subtitle: "Change your name, email or avatar",
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          /// Security
          const Text(
            "Security",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
          ),

          const SizedBox(height: 10),

          Container(
            decoration: _boxDecoration(),
            child: Column(
              children: [
                SettingsRow(
                  icon: Icons.security,
                  title: "Change Password",
                  subtitle: "Update your password",
                  onTap: () {
                    Navigator.pushNamed(context, '/changePassword');
                  },
                ),

                const Divider(height: 1),

                const SettingsRow(
                  icon: Icons.phone_iphone_rounded,
                  title: "Active Session",
                  subtitle: "two active devices",
                ),

                const Divider(height: 1),

                const SettingsRow(
                  icon: Icons.logout_rounded,
                  title: "Logout From All Devices",
                  subtitle: "End all active sessions",
                  iconColor: Colors.red,
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          /// Notifications
          const Text(
            "Notifications",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
          ),

          const SizedBox(height: 10),

          Container(
            decoration: _boxDecoration(),
            child: const Column(
              children: [
                SwitchRow(
                  title: "Match Found",
                  subtitle: "Get notified when potential matches are found",
                  value: true,
                ),

                Divider(height: 1),

                SwitchRow(
                  title: "Comments On My Report",
                  subtitle: "Updates when someone responds your post",
                  value: true,
                ),

                Divider(height: 1),

                SwitchRow(
                  title: "General Updates",
                  subtitle: "Platform news and community updates",
                  value: true,
                ),

                Divider(height: 1),

                SwitchRow(
                  title: "SMS Notification",
                  subtitle: "Receive important alerts via text message",
                  value: false,
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          /// Privacy
          const Text(
            "Privacy",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 20,
              color: Color(0xFF000000),
            ),
          ),

          const SizedBox(height: 10),

          Container(
            decoration: _boxDecoration(),
            child: Column(
              children: [
                const SwitchRow(
                  title: "Hide Phone Number",
                  subtitle: "Keep your number private in public posts",
                  value: false,
                ),

                Divider(height: 1),

                const SwitchRow(
                  title: "Hide Exact Location",
                  subtitle: "Show only city/area not precise coordinates",
                  value: true,
                ),

                Divider(height: 1),

                const SwitchRow(
                  title: "Post Anonymously",
                  subtitle: "Hide your identity when creating reports",
                  value: false,
                ),
                Divider(height: 1),
                const SizedBox(height: 20),

                /// Danger Zone
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFE3E3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.warning, color: Color(0xFFFF4646)),
                            SizedBox(width: 8),
                            Text(
                              "Danger Zone",
                              style: TextStyle(
                                color: Color(0xFFFF4646),
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),

                        const Text(
                          "Permanently delete your account and all data",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF817878),
                          ),
                        ),

                        const SizedBox(height: 10),

                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFFF4646),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Delete Account",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          /// Support
          const Text(
            "Support & Legal",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 20,
              color: Color(0xFF000000),
            ),
          ),

          const SizedBox(height: 10),

          Container(
            decoration: _boxDecoration(),
            child: Column(
              children: [
                SettingsRow(
                  icon: Icons.contact_phone_outlined,
                  title: "Contact Us",
                  onTap: () {
                    Navigator.pushNamed(context, '/contact');
                  },
                ),

                Divider(height: 1),

                SettingsRow(
                  icon: Icons.privacy_tip_outlined,
                  title: "Privacy Policy",
                  onTap: () {
                    Navigator.pushNamed(context, '/privacy');
                  },
                ),

                Divider(height: 1),

                SettingsRow(
                  icon: Icons.description_outlined,
                  title: "Terms & conditions",
                  onTap: () {
                    Navigator.pushNamed(context, '/terms');
                  },
                ),

                Divider(height: 1),

                SettingsRow(
                  icon: Icons.report,
                  title: "Report Abuse",
                  onTap: () {
                    Navigator.pushNamed(context, '/report');
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          const Center(
            child: Text(
              "Waseet Kheir v1.0.0",
              style: TextStyle(
                color: Color(0xFF817878),
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Box decoration
BoxDecoration _boxDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(color: Colors.grey.shade300),
  );
}

/// Row with arrow
class SettingsRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final Color? iconColor;
  final VoidCallback? onTap;

  const SettingsRow({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.iconColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: iconColor ?? Color(0xFFB3B3B3), size: 35),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Color(0xFF000000),
        ),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFF817878),
              ),
            )
          : null,
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: Color(0xFFB3B3B3),
      ),
      onTap: onTap,
    );
  }
}

/// Row with switch
class SwitchRow extends StatelessWidget {
  final String title;
  final String? subtitle;
  final bool value;

  const SwitchRow({
    super.key,
    required this.title,
    required this.subtitle,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Color(0xFF000000),
        ),
      ),
      subtitle: Text(
        subtitle!,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: Color(0xFF817878),
        ),
      ),
      value: value,
      // activeColor: Color(0xFF57C05C),
      activeTrackColor: Color(0xFF57C05C),
      activeThumbColor: Color(0xFFFFFFFF),
      inactiveThumbColor: Color(0xFFFFFFFF),

      inactiveTrackColor: Color(0xFFB3B3B3),
      onChanged: (value) {},
    );
  }
}
