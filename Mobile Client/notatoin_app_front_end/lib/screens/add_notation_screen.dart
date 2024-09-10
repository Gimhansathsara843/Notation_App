import 'package:flutter/material.dart';

class AddNotationScreen extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Notation")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: "Title"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Simulate saving the notation
                Navigator.pop(context);
              },
              child: Text("Save Notation"),
            ),
          ],
        ),
      ),
    );
  }
}
