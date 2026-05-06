import 'package:flutter/material.dart';
import 'package:wasit_kheir/chat/view/chat_screen.dart';
import 'package:wasit_kheir/chat/view/widgets/empty_chat.dart';
// import 'package:wasit_kheir/notification/view/notifications_screen.dart';
// import 'package:wasit_kheir/profile/view/profile_screen.dart';
// import 'package:wasit_kheir/report/report_item_view.dart';
// import 'package:wasit_kheir/settings/view/settings_screen.dart';
// import 'package:wasit_kheir/settings/view/widgets/change_password.dart';
// import 'package:wasit_kheir/settings/view/widgets/contact_us.dart';
// import 'package:wasit_kheir/settings/view/widgets/edit_profile.dart';
// import 'package:wasit_kheir/settings/view/widgets/privacy_policy.dart';
// import 'package:wasit_kheir/settings/view/widgets/report_abuse.dart';
// import 'package:wasit_kheir/settings/view/widgets/teams_conditions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/profile',

      // routes: {
      //   '/settings': (context) => const SettingsView(),
      //   '/profile': (context) => const ProfileInformationScreen(),
      //   '/changePassword': (context) => const ChangePasswordScreen(),
      //   '/contact': (context) => const ContactUsScreen(),
      //   '/privacy': (context) => const PrivacyPolicy(),
      //   '/terms': (context) => const TermsConditions(),
      //   '/report': (context) => const ReportAbuse(),
      // },
      home: EmptyChatScreen(),
      //  ChatScreen(),
    );
  }
}
