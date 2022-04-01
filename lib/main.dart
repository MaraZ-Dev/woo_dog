import 'package:flutter/material.dart';
import 'package:woo_dog_app/user_profile.dart';
import 'onboarding.dart';
import 'sign_up.dart';
import 'dashboard.dart';

void main() => runApp(const WooDog());

class WooDog extends StatelessWidget {
  const WooDog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      initialRoute: 'Home',
      routes: {
        'Home': (context) => const Onboarding(),
        'SignUp': (context) => const SignUp(),
        'DashBoard': (context) => const DashBoard(),
        'UserProfile': (context) => const UserProfile(),
      },
    );
  }
}
