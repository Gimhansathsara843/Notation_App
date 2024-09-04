// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:your_app/services/auth_service.dart';

// class AuthProvider extends ChangeNotifier {
//   User? _user;
//   final AuthService _authService = AuthService();

//   User? get user => _user;

//   Future<void> signInWithGoogle() async {
//     _user = await _authService.signInWithGoogle();
//     notifyListeners();
//   }

//   Future<void> signOut() async {
//     await _authService.signOut();
//     _user = null;
//     notifyListeners();
//   }
// }
