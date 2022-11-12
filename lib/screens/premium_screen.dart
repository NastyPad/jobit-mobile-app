import 'package:flutter/material.dart';
class PremiumPage extends StatelessWidget {
  const PremiumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar: AppBar(
      title: const Text('Premium'),
      backgroundColor: Colors.amber.shade800,
    ),
    backgroundColor: Colors.grey[200],
  );
}