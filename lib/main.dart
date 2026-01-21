import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/donors_list_page.dart';

void main() {
  runApp(const FastBloodApp());
}

class FastBloodApp extends StatelessWidget {
  const FastBloodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // First screen
      home: const LoginScreen(),

      // App routes
      routes: {
        '/home': (context) => const HomeScreen(),
        '/donors': (context) => const DonorsListPage(),
      },
    );
  }
}
