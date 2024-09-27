import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications Screen'),
      ),
      body: Center(
        child: Text('No new notifications'),
      ),
    );
  }
}
