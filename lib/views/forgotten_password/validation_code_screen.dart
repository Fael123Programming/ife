import 'package:flutter/material.dart';
import 'package:ife/views/forgotten_password/form/validation_code_form.dart';
import 'package:ife/widgets/custom_app_bar.dart';
import 'package:ife/widgets/header_title.dart';

class ValidationCodeScreen extends StatefulWidget {
  const ValidationCodeScreen({Key? key}) : super(key: key);

  @override
  _ValidationCodeScreenState createState() => _ValidationCodeScreenState();
}

class _ValidationCodeScreenState extends State<ValidationCodeScreen> {
  final textFormField1Controller = TextEditingController();
  final textFormField2Controller = TextEditingController();
  final textFormField3Controller = TextEditingController();
  final textFormField4Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeaderTitle(
                title: 'Código de Validação',
                subtitle:
                    'Digite o código de 4 dígitos que foi enviado para seu e-mail',
              ),
              ValidationCodeForm(),
            ],
          ),
        ),
      ),
    );
  }
}
