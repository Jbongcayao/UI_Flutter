import 'package:flutter/material.dart';
import 'dart:async'; // For timer functionality

class TimerScreen extends StatefulWidget {
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  int _remainingTime = 10; // Starting time for the countdown
  Timer? _timer; // Timer object

  // Function to start the timer
  void _startTimer() {
    if (_timer != null) {
      _timer!.cancel(); // Cancel any existing timers
    }

    setState(() {
      _remainingTime = 10; // Reset to 10 seconds
    });

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--; // Decrease the remaining time every second
        });
      } else {
        timer.cancel(); // Stop the timer when it reaches 0
      }
    });
  }

  @override
  void dispose() {
    if (_timer != null) {
      _timer!.cancel(); // Clean up the timer when the widget is disposed
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timer Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Countdown Timer',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              '$_remainingTime seconds',
              style: TextStyle(fontSize: 48),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _startTimer,
              child: Text('Start Timer'),
            ),
          ],
        ),
      ),
    );
  }
}
