import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:notatoin_app_front_end/screens/login_screen.dart';
import 'dart:async';

class AnimationScreen extends StatefulWidget {
  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _startLottie = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _controller.forward();

    // Delay the start of the Lottie animation by 4 seconds
    Timer(Duration(seconds: 4), () {
      setState(() {
        _startLottie = true;
      });
    });

    // Navigate to LoginScreen after the Lottie animation completes
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: FadeTransition(
              opacity: _animation,
              child: Text(
                'Welcome',
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          if (_startLottie)
            Align(
              alignment: Alignment.center,
              child: Lottie.network(
                'https://lottie.host/95b6d678-5cdb-4a19-938b-b58d0823bac0/ZU8XcCr935.json',
                controller: _controller,
                onLoaded: (composition) {
                  // Set the duration of the controller to match the Lottie animation duration
                  _controller.duration = composition.duration;
                  _controller.forward();
                },
              ),
            ),
        ],
      ),
    );
  }
}
