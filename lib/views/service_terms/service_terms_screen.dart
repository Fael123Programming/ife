import 'package:flutter/material.dart';

class ServiceTermsScreen extends StatefulWidget {
  const ServiceTermsScreen({Key? key}) : super(key: key);

  @override
  State<ServiceTermsScreen> createState() => _ServiceTermsScreen();
}

class _ServiceTermsScreen extends State<ServiceTermsScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Termos de Serviçoc'),
        centerTitle: true,
        backgroundColor: const Color(0xFFFFB20F),
      ),
      body: Container(
        child: Column(),
      )
    );
  }
}
