import 'package:flutter/material.dart';
import 'package:ife/utils/screen_percentage.dart';
import 'package:ife/utils/screen_sizer.dart';
import 'package:ife/views/forgot_password/password_confirm.dart';
import 'package:ife/widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPasswordForm extends StatefulWidget {
  const NewPasswordForm({Key? key}) : super(key: key);

  @override
  _NewPasswordFormState createState() => _NewPasswordFormState();
}

class _NewPasswordFormState extends State<NewPasswordForm> {
  final formKey = GlobalKey<FormState>();
  final passwordField1Controller = TextEditingController();
  final passwordField2Controller = TextEditingController();

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
            child: PasswordConfirm(
              passwordField1Controller: passwordField1Controller,
              passwordField2Controller: passwordField2Controller,
            ),
          ),
        ),
        Button(
          text: 'Confirmar',
          onPressed: () {
            if (formKey.currentState!.validate()) {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        'Redefinir senha?',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(),
                      ),
                      content: Text(
                        'Lembre-se de anotar sua nova senha em algum lugar para não esquecê-la',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.roboto(),
                      ),
                      actions: [
                        TextButton(
                          child: Text('Sim', style: GoogleFonts.roboto()),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    'Senha redefinida com sucesso!',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(),
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text(
                                        'Ok',
                                        style: GoogleFonts.roboto(),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    )
                                  ],
                                );
                              },
                            );
                          },
                        ),
                        TextButton(
                          child: Text('Não', style: GoogleFonts.roboto()),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  },
                  barrierDismissible: false);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Senha inválida'),
                  duration: Duration(seconds: 1),
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
