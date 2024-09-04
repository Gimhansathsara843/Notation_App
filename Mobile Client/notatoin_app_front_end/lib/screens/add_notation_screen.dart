// import 'package:flutter/material.dart';
// import 'package:your_app/services/notation_service.dart';
// import 'package:your_app/models/notation_model.dart';

// class AddNotationScreen extends StatelessWidget {
//   final TextEditingController _titleController = TextEditingController();
//   final TextEditingController _contentController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Add Notation")),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _titleController,
//               decoration: InputDecoration(labelText: "Title"),
//             ),
//             TextField(
//               controller: _contentController,
//               decoration: InputDecoration(labelText: "Content"),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 final newNotation = Notation(
//                   id: DateTime.now().toString(),
//                   title: _titleController.text,
//                   content: _contentController.text,
//                 );
//                 NotationService().addNotation(newNotation);
//                 Navigator.pop(context);
//               },
//               child: Text("Save Notation"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

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
