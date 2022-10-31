import 'package:flutter/material.dart';
import 'navigation_drawer.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>Scaffold(
    drawer: NavigationDrawer(),
    appBar: AppBar(
      title: const Text('Profile'),
      backgroundColor: Colors.amber.shade600,
    ),
    backgroundColor: Colors.grey[200],
  );
}