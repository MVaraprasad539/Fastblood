import 'package:flutter/material.dart';
import 'donors_list_page.dart';
import 'request_blood_screen.dart';
import 'profile_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FASTBLOOD Dashboard")),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(20),
        children: [
          _card(context, "Find Donors", Icons.people, const DonorsListPage()),
          _card(context, "Request Blood", Icons.bloodtype, const RequestBloodScreen()),
          _card(context, "Profile", Icons.person, const ProfileScreen()),
        ],
      ),
    );
  }

  Widget _card(BuildContext context, String title, IconData icon, Widget page) {
    return Card(
      child: InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.red),
            const SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
