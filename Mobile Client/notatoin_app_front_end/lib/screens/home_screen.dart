import 'package:flutter/material.dart';
import 'package:notatoin_app_front_end/screens/add_notation_screen.dart';
import 'package:notatoin_app_front_end/widgets/notation_tile.dart';

class HomeScreen extends StatelessWidget {
  final List<String> notations = ["Notation 1", "Notation 2", "Notation 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notations"),
      ),
      body: ListView.builder(
        itemCount: notations.length,
        itemBuilder: (context, index) {
          return NotationTile(title: notations[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNotationScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
