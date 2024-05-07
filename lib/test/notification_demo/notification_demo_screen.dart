import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class NotificationDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Demo'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Code to trigger a notification
                AwesomeNotifications().createNotification(
                  content: NotificationContent(
                    id: 1,
                    channelKey: 'basic_channel',
                    title: 'Demo Notification',
                    body: 'This is a demo notification.',
                  ),
                );
              },
              child: Text('Show Notification'),
            ),
          ),
        ],
      ),
    );
  }
}
