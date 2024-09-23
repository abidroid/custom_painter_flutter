import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Topics'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: const Text('Line Draw'),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Circle Draw'),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Interactive Exapmle Draw'),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
