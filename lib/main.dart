import 'package:flutter/material.dart';
import 'package:wasit_kheir/settings/view/settings_screen.dart';
import 'package:wasit_kheir/settings/view/widgets/change_password.dart';
import 'package:wasit_kheir/settings/view/widgets/contact_us.dart';
import 'package:wasit_kheir/settings/view/widgets/edit_profile.dart';
import 'package:wasit_kheir/settings/view/widgets/privacy_policy.dart';
import 'package:wasit_kheir/settings/view/widgets/report_abuse.dart';
import 'package:wasit_kheir/settings/view/widgets/teams_conditions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/settings',

      routes: {
        '/settings': (context) => const SettingsView(),
        '/profile': (context) => const ProfileInformationScreen(),
        '/changePassword': (context) => const ChangePasswordScreen(),
        '/contact': (context) => const ContactUsScreen(),
        '/privacy': (context) => const PrivacyPolicy(),
        '/terms': (context) => const TermsConditions(),
        '/report': (context) => const ReportAbuse(),
      },
    );
  }
}
