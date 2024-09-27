import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final Function toggleTheme; // Function to toggle theme
  final bool isDarkMode; // Current theme state

  SettingsScreen({required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Dark Mode: ${isDarkMode ? "Enabled" : "Disabled"}'),
            Switch(
              value: isDarkMode,
              onChanged: (value) {
                toggleTheme(value); // Call toggleTheme function from main.dart
              },
            ),
          ],
        ),
      ),
    );
  }
}
