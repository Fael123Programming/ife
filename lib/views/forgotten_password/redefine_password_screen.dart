import 'package:flutter/material.dart';
import 'package:ife/widgets/header_title.dart';
import 'package:ife/widgets/custom_app_bar.dart';
import 'package:ife/views/forgotten_password/form/new_password_form.dart';

class RedefinePasswordScreen extends StatelessWidget {
  const RedefinePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: const Center(
          child: Column(
            children: [
              HeaderTitle(
                title: 'Nova Senha',
                subtitle: 'Digite sua nova senha abaixo',
              ),
              NewPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
