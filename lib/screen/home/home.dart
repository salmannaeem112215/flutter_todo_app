import 'package:flutter/material.dart';

import './components/body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TO DO'),
        centerTitle: true,
        elevation: 1,
      ),
      body: const Body(),
    );
  }
}
