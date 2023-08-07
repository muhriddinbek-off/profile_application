import 'package:flutter/material.dart';
import 'body_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFF8D76),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back, color: Colors.white, size: 25),
        title: const Text('Edit Profile', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
        actions: const [
          Padding(padding: EdgeInsets.only(right: 15), child: Icon(Icons.share, color: Colors.white, size: 25)),
        ],
      ),
      body: const BodyPage(),
    );
  }
}
