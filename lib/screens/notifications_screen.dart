import 'package:flutter/material.dart';
import 'navigation_drawer.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)=> Scaffold(
    appBar: AppBar(
      title: const Text('Notifications'),
      backgroundColor: Colors.amber.shade600,
    ),
    backgroundColor: Colors.grey[200],
    drawer: const NavigationDrawer() ,
  );
}