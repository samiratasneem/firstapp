import 'package:flutter/material.dart';

class SimpleNotificationPage extends StatelessWidget {
  final List<Map<String, dynamic>> notifications = [
    {
      'type': 'order',
      'title': 'Order Confirmed',
      'message': 'Your chocolate cake order is confirmed',
      'time': '10 min ago',
      'isNew': true
    },
    {
      'type': 'offer',
      'title': 'Special Offer',
      'message': '15% off on all cupcakes this weekend',
      'time': '2 hours ago',
      'isNew': true
    },
    {
      'type': 'order',
      'title': 'Ready for Pickup',
      'message': 'Your red velvet cake is ready',
      'time': 'Yesterday',
      'isNew': false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        actions: [
          TextButton(
            child: Text('Clear All', style: TextStyle(color: Colors.white)),
            onPressed: () {}, // Add clear functionality
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Card(
            margin: EdgeInsets.all(8),
            color: notification['isNew'] ? Colors.blue[50] : null,
            child: ListTile(
              leading: Icon(
                notification['type'] == 'order' ? Icons.shopping_bag 
                  : notification['type'] == 'offer' ? Icons.local_offer 
                  : Icons.notifications,
                color: Colors.orange,
              ),
              title: Text(notification['title'],
                  style: TextStyle(
                      fontWeight: notification['isNew'] 
                          ? FontWeight.bold 
                          : FontWeight.normal)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(notification['message']),
                  SizedBox(height: 4),
                  Text(notification['time'],
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
              trailing: notification['isNew'] 
                  ? Icon(Icons.brightness_1, size: 12, color: Colors.blue)
                  : null,
              onTap: () {}, // Add tap functionality
            ),
          );
        },
      ),
    );
  }
}