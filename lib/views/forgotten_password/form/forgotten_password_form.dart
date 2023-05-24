import 'package:flutter/material.dart';
import 'package:ife/utils/screen_sizer.dart';
import 'package:ife/utils/screen_percentage.dart';
import 'package:ife/widgets/button.dart';
import 'package:ife/widgets/input.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class ForgottenPasswordForm extends StatefulWidget {
  const ForgottenPasswordForm({Key? key}) : super(key: key);

  @override
  State<ForgottenPasswordForm> createState() => _ForgottenPasswordFormState();
}

class _ForgottenPasswordFormState extends State<ForgottenPasswordForm> {
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenSizer = ScreenSizer(context);
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: screenSizer.convertToDeviceScreenHeight(
              screenPercentage: ScreenPercentage.marginTopFormContainer,
            ),
          ),
          padding: EdgeInsets.symmetric(
            vertical: screenSizer.convertToDeviceScreenHeight(
              screenPercentage: ScreenPercentage.formContainerVerticalPadding,
            ),
            horizontal: screenSizer.convertToDeviceScreenWidth(
              screenPercentage: ScreenPercentage.formContainerHorizontalPadding,
            ),
          ),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.always,
            child: const Input(type: 'Email'),
          ),
        ),
        Button(
          text: 'CONTINUAR',
          onPressed: () async {
            if (formKey.currentState!.validate()) {
              Navigator.pushNamed(context, '/forgottenpassword/validationcode');
            }
          },
        ),
      ],
    );
  }
}
