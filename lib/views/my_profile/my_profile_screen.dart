import 'package:flutter/material.dart';
import 'package:ife/widgets/image_input.dart';
import 'package:ife/widgets/text_input.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreen();
}

class _MyProfileScreen extends State<MyProfileScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Perfil'),
        backgroundColor: const Color(0xFFFFB20F),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const ImageInput(
              width: 120,
              height: 120,
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextInput(
                    inputType: TextInputType.text,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
