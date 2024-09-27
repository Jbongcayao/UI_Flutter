import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String userName = "Joedem Vigmar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('User Name: $userName'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  userName = "Lif"; // Change user name
                });
              },
              child: Text('Change User Name'),
            ),
          ],
        ),
      ),
    );
  }
}
