import 'package:flutter/material.dart';
import 'package:jobit_mobile_app/screens/navigation_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)=> Scaffold(
    extendBodyBehindAppBar: true,
    appBar: AppBar(
      title: const Text('Home'),
      centerTitle: true,
      backgroundColor: Colors.amber.shade600,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
      ),
    ),
    backgroundColor: Color.fromRGBO(238,225,216,255),
    drawer:  NavigationDrawer() ,
    body: Image.network(
        "https://i.pinimg.com/564x/eb/21/9a/eb219a49fbf1d9e6c2964b9a6daaa405.jpg",
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    ),
  );
}

