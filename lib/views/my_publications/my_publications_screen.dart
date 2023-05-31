import 'package:flutter/material.dart';

class MyPublicationsScreen extends StatefulWidget {
  const MyPublicationsScreen({Key? key}) : super(key: key);

  @override
  State<MyPublicationsScreen> createState() => _MyPublicationsScreen();
}

class _MyPublicationsScreen extends State<MyPublicationsScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Anúncios'),
        backgroundColor: const Color(0xFFFFB20F),
        centerTitle: true,
      ),
    );
  }
}
