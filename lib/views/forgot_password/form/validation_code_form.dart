import 'package:flutter/material.dart';
import 'package:ife/widgets/custom_code_input/custom_code_input.dart';
import 'package:ifeirinha/widgets/button/button.dart';

class ValidationCodeForm extends StatefulWidget {
  const ValidationCodeForm({Key? key}) : super(key: key);

  @override
  _ValidationCodeFormState createState() => _ValidationCodeFormState();
}

class _ValidationCodeFormState extends State<ValidationCodeForm> {
  final customCodeInputKey = GlobalKey<CustomCodeInputState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Column(
        children: [
          CustomCodeInput(key: customCodeInputKey),
          Button(
            text: 'Continuar',
            onPressed: () async {
              FocusManager.instance.primaryFocus?.unfocus();
              String code = getCode();
              cleanForm();
              Navigator.pushNamed(context, '/forgotpassword/redefinepassword');
              await Future.delayed(const Duration(seconds: 1));
            },
          ),
          const SizedBox(
            height: 12,
          ),
          Button(
            specialWidth: true,
            text: 'Reenviar Código',
            onPressed: () async {
              cleanForm();
              FocusManager.instance.primaryFocus?.unfocus();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Código reenviado com sucesso'),
                  duration: Duration(seconds: 1),
                ),
              );
              await Future.delayed(const Duration(seconds: 1));
              customCodeInputKey.currentState!.textFormField1FocusNode
                  .requestFocus();
            },
          ),
        ],
      ),
    );
  }

  bool isCodeValid(String code) {
    return customCodeInputKey.currentState!.isCodeValid(code);
  }

  void cleanForm() {
    customCodeInputKey.currentState!.cleanForm();
  }

  String getCode() {
    return customCodeInputKey.currentState!.getCode();
  }
}
