import 'package:flutter/material.dart';

class RequestBloodScreen extends StatelessWidget {
  const RequestBloodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Request Blood")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: "Patient Name")),
            TextField(decoration: InputDecoration(labelText: "Gender")),
           
            TextField(decoration: InputDecoration(labelText: "Blood Type")),
            TextField(decoration: InputDecoration(labelText: "Venue")),
            TextField(decoration: InputDecoration(labelText: "Date")),
            TextField(decoration: InputDecoration(labelText: "Time")),
            TextField(decoration: InputDecoration(labelText: "Phone")),
            

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Blood Request Submitted")),
                );
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
