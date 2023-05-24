import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ife/utils/screen_percentage.dart';
import 'package:ife/utils/screen_sizer.dart';
import 'package:ife/views/forgot_password//password_confirm.dart';
import 'package:ife/widgets/image_input.dart';
import 'package:ife/widgets/phone_number_input/phone_number_input.dart';
import 'package:ife/widgets/user_terms_conditions.dart';
import 'package:ife/widgets/button.dart';
import 'package:ife/widgets/input.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  SignUpFormState createState() => SignUpFormState();
}

class SignUpFormState extends State<SignUpForm> {
  final formKey = GlobalKey<FormState>();
  final nameFieldController = TextEditingController();
  final emailFieldController = TextEditingController();
  final passwordField1Controller = TextEditingController();
  final passwordField2Controller = TextEditingController();
  final phoneNumberInputController = GlobalKey<PhoneNumberInputState>();
  bool listTileIconChecked = false;
  Icon listTileIcon = const Icon(Icons.check_box_outline_blank_outlined);

  @override
  Widget build(BuildContext context) {
    final screenSizer = ScreenSizer(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: screenSizer.convertToDeviceScreenWidth(
          screenPercentage: ScreenPercentage.formContainerHorizontalPadding,
        ),
      ),
      child: Column(
        children: [
          const ImageInput(),
          Form(
            key: formKey,
            child: Column(
              children: [
                const Input(type: 'Nome completo'),
                Container(
                  margin: EdgeInsets.only(
                    top: screenSizer.convertToDeviceScreenHeight(
                      screenPercentage:
                          ScreenPercentage.marginInbetweenTextFormFields,
                    ),
                    bottom: screenSizer.convertToDeviceScreenHeight(
                      screenPercentage:
                          ScreenPercentage.marginInbetweenTextFormFields,
                    ),
                  ),
                  child: const Input(type: 'Email institucional'),
                ),
                PhoneNumberInput(key: phoneNumberInputController),
                PasswordConfirm(
                  passwordField1Controller: passwordField1Controller,
                  passwordField2Controller: passwordField2Controller,
                ),
                ListTile(
                  leading: listTileIcon,
                  title: RichText(
                    text: TextSpan(
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: [
                        const TextSpan(text: 'Li e aceito os '),
                        TextSpan(
                          text: 'termos e condições de uso',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                      'Termos e Condições de Uso',
                                      style: GoogleFonts.roboto(),
                                    ),
                                    content: SingleChildScrollView(
                                      child: useTermsConditions,
                                    ),
                                    actions: [
                                      TextButton(
                                        child: Text(
                                          'Ok',
                                          style: GoogleFonts.roboto(),
                                        ),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(
                      () {
                        listTileIconChecked = !listTileIconChecked;
                        listTileIcon = listTileIconChecked
                            ? const Icon(
                                Icons.check_box_rounded,
                                color: Colors.green,
                              )
                            : const Icon(
                                Icons.check_box_outline_blank_outlined,
                              );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Button(
            text: 'Cadastrar-se',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                String msg = 'Cadastrado!';
                if (listTileIconChecked) {
                  Navigator.pop(context);
                } else {
                  msg =
                      'É necessário que concorde com nossos termos e condições de uso';
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(msg),
                    duration: const Duration(seconds: 2),
                  ),
                );
              }
            },
            reducedMarginTop: true,
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  bool hasFormInformation() {
    return nameFieldController.text.isNotEmpty ||
        emailFieldController.text.isNotEmpty ||
        phoneNumberInputController
            .currentState!.textFormFieldController.text.isNotEmpty ||
        passwordField1Controller.text.isNotEmpty ||
        passwordField2Controller.text.isNotEmpty;
  }
}
