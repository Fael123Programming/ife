import 'package:flutter/material.dart';

class CreatePublicationScreen extends StatefulWidget {
  const CreatePublicationScreen({Key? key}) : super(key: key);

  @override
  State<CreatePublicationScreen> createState() => _CreatePublicationScreen();
}

class _CreatePublicationScreen extends State<CreatePublicationScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Anúncio'),
        backgroundColor: const Color(0xFFFFB20F),
        centerTitle: true,
      ),
    );
  }
}
