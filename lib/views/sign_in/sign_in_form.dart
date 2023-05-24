import 'package:flutter/material.dart';
import 'package:ife/utils/screen_sizer.dart';
import 'package:ife/utils/screen_percentage.dart';
import 'package:ife/widgets/button.dart';
import 'package:ife/widgets/input.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscurePassword = true;
  IconData passwordIconData = Icons.visibility_off_outlined;

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
            horizontal: screenSizer.convertToDeviceScreenWidth(
              screenPercentage: ScreenPercentage.formContainerHorizontalPadding,
            ),
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Input(type: 'Email'),
                SizedBox(
                  height: screenSizer.convertToDeviceScreenHeight(
                    screenPercentage:
                        ScreenPercentage.marginInbetweenTextFormFields,
                  ),
                ),
                const Input(type: 'Senha'),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              '/forgotpassword',
            );
          },
          child: Container(
            margin: EdgeInsets.only(
              right: screenSizer.convertToDeviceScreenWidth(
                screenPercentage: ScreenPercentage.smoothMarginRight,
              ),
            ),
            alignment: Alignment.topRight,
            child: const Text(
              'Esqueci minha senha',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Colors.grey,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Button(
          text: 'ENTRAR',
          onPressed: () {
            formKey.currentState!.validate();
            Navigator.pushNamed(
              context,
              '/home',
            );
          },
        ),
      ],
    );
  }
}
