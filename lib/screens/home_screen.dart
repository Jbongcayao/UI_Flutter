import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'settings_screen.dart';
import 'notifications_screen.dart';
import 'about_screen.dart';
import 'timer_screen.dart'; // Import the new TimerScreen

class HomeScreen extends StatelessWidget {
  final Function toggleTheme; // Function to toggle theme
  final bool isDarkMode; // Current theme state

  HomeScreen({required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              child: Text('Go to Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SettingsScreen(
                            toggleTheme: toggleTheme,
                            isDarkMode: isDarkMode,
                          )),
                );
              },
              child: Text('Go to Settings'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
                );
              },
              child: Text('Go to Notifications'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutScreen()),
                );
              },
              child: Text('Go to About'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TimerScreen()), // Navigate to TimerScreen
                );
              },
              child: Text('Go to Timer'),
            ),
          ],
        ),
      ),
    );
  }
}
