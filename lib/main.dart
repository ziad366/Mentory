import 'UI/screens/requests.dart';
import 'UI/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'UI/screens/mentor_profile.dart';
import 'UI/screens/mentee_profile.dart';
import 'UI/screens/frequently_q_and_a.dart';
import 'package:mentory/UI/screens/setting.dart';
import 'package:mentory/UI/screens/sign_up.dart';
import 'package:mentory/UI/screens/login_screen.dart';

void main() {
  runApp(const Mentory());
}

class Mentory extends StatelessWidget {
  const Mentory({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mentor Matching',
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/signUp': (context) => const SignUpScreen(),
        '/home': (context) => HomeScreen(),
        '/requests': (context) => RequestsScreen(),
        '/setting': (context) => const SettingsScreen(),
        '/fqAndA': (context) => FaqScreen(),
        '/menteeProf': (context) => MenteeProfileScreen(),
        '/mentorProf': (context) => MentorProfileScreen(),
      },
    );
  }
}
