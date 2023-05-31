import 'package:flutter/material.dart';

class ReportAProblemScreen extends StatefulWidget {
  const ReportAProblemScreen({Key? key}) : super(key: key);

  @override
  State<ReportAProblemScreen> createState() => _ReportAProblemScreen();
}

class _ReportAProblemScreen extends State<ReportAProblemScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Relatar um Problema'),
        centerTitle: true,
        backgroundColor: const Color(0xFFFFB20F),
      ),
    );
  }
}
