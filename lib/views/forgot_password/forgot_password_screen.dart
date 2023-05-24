import 'package:flutter/material.dart';
import 'package:ife/widgets/header_title.dart';
import 'package:ife/views/forgot_password/form/forget_password_form.dart';
import 'package:ife/widgets/custom_app_bar.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
                    'Digite o seu e-mail para receber o código de validação.',
              ),
              ForgetPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
