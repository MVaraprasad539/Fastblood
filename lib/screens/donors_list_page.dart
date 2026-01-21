import 'package:flutter/material.dart';
import '../services/donor_service.dart';

class DonorsListPage extends StatelessWidget {

  const DonorsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final donors = DonorService.getDonors();

    return Scaffold(
      appBar: AppBar(title: const Text("Available Donors")),
      body: ListView.builder(
        itemCount: donors.length,
        itemBuilder: (context, index) {
          final donor = donors[index];
          return ListTile(
            leading: const Icon(Icons.bloodtype, color: Colors.red),
            title: Text(donor.name),
            subtitle: Text("${donor.bloodGroup} • ${donor.location}"),
          );
        },
      ),
    );
  }
}
