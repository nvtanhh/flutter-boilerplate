import 'package:flutter/material.dart';

import '../../../core/extensions/all.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {},
            tooltip: 'Logout',
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Home',
          style: context.textTheme.bodyLarge?.copyWith(color: Colors.black87),
        ),
      ),
    );
  }
}
