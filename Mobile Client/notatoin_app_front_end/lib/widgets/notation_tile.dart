// import 'package:flutter/material.dart';
// import 'package:your_app/models/notation_model.dart';

// class NotationTile extends StatelessWidget {
//   final Notation notation;

//   NotationTile({required this.notation});

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(notation.title),
//       subtitle: Text(notation.content),
//     );
//   }
// }

import 'package:flutter/material.dart';

class NotationTile extends StatelessWidget {
  final String title;

  NotationTile({required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
    );
  }
}
