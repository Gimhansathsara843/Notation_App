// import 'package:flutter/material.dart';
// import 'package:your_app/screens/login_screen.dart';
// import 'package:your_app/providers/auth_provider.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_) => AuthProvider(),
//       child: MaterialApp(
//         title: 'Notation App',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: LoginScreen(),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:notatoin_app_front_end/screens/login_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notation App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
