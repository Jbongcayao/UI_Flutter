import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // State to track whether the app is in dark mode or light mode
  bool isDarkMode = false;

  // Function to toggle theme mode
  void toggleTheme(bool isDarkModeEnabled) {
    setState(() {
      isDarkMode = isDarkModeEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Theme Toggle App',
      themeMode: isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light, // Switch between dark and light theme
      theme: ThemeData.light(), // Light mode theme
      darkTheme: ThemeData.dark(), // Dark mode theme
      home: HomeScreen(
          toggleTheme: toggleTheme,
          isDarkMode:
              isDarkMode), // Pass toggle function and theme state to HomeScreen
    );
  }
}
