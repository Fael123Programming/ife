import 'package:flutter/material.dart';
import 'package:ife/widgets/header_title.dart';
import 'package:ife/views/forgotten_password/form/forgotten_password_form.dart';
import 'package:ife/widgets/custom_app_bar.dart';

class ForgottenPasswordScreen extends StatefulWidget {
  const ForgottenPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgottenPasswordScreen> createState() => _ForgottenPasswordScreenState();
}

class _ForgottenPasswordScreenState extends State<ForgottenPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
              HeaderTitle(
                title: 'Esqueceu a senha',
                subtitle:
                    'Digite o seu e-mail para receber o código de validação',
              ),
              ForgottenPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
