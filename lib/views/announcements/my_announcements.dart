import 'package:flutter/material.dart';

class MyAnnouncements extends StatefulWidget {
  const MyAnnouncements({Key? key}) : super(key: key);

  @override
  State<MyAnnouncements> createState() => _MyAnnouncements();
}

class _MyAnnouncements extends State<MyAnnouncements> {
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
