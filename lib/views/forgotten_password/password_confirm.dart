import 'package:flutter/material.dart';
import 'package:ife/utils/validator.dart';
import 'package:ife/utils/screen_percentage.dart';
import 'package:ife/utils/screen_sizer.dart';

class PasswordConfirm extends StatefulWidget {
  final TextEditingController passwordField1Controller,
      passwordField2Controller;
  final FocusNode? passwordFocusNode;
  final Function()? onConfirmPasswordEditingComplete;

  const PasswordConfirm(
      {Key? key,
      required this.passwordField1Controller,
      required this.passwordField2Controller,
      this.passwordFocusNode,
      this.onConfirmPasswordEditingComplete})
      : super(key: key);

  @override
  _PasswordConfirmState createState() => _PasswordConfirmState();
}

class _PasswordConfirmState extends State<PasswordConfirm> {
  IconData passwordField1IconData = Icons.visibility_off_outlined;
  IconData passwordField2IconData = Icons.visibility_outlined;
  bool visibility1 = true, visibility2 = true;

  late FocusNode confirmPasswordFocusNode;

  @override
  void initState() {
    super.initState();
    confirmPasswordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    confirmPasswordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSizer = ScreenSizer(context);
    return Column(
      children: [
        TextFormField(
          focusNode: widget.passwordFocusNode,
          onEditingComplete: () => confirmPasswordFocusNode.requestFocus(),
          cursorColor: Colors.black,
          controller: widget.passwordField1Controller,
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(),
            border: const OutlineInputBorder(),
            hintText: 'Senha',
            helperText: '',
            helperMaxLines: 2,
            errorMaxLines: 2,
            hintStyle: const TextStyle(color: Colors.grey),
            isDense: true,
            suffixIcon: IconButton(
              icon: Icon(
                visibility1 ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  visibility1 = !visibility1;
                });
              },
            ),
          ),
          validator: (value) => Validator.validatePasswordSpecialMsg(value),
          obscureText: visibility1,
        ),
        Container(
          margin: EdgeInsets.only(
            top: screenSizer.convertToDeviceScreenHeight(
              screenPercentage: ScreenPercentage.marginInbetweenTextFormFields,
            ),
          ),
          child: TextFormField(
            focusNode: confirmPasswordFocusNode,
            onEditingComplete: widget.onConfirmPasswordEditingComplete,
            cursorColor: Colors.black,
            controller: widget.passwordField2Controller,
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(),
              border: const OutlineInputBorder(),
              hintText: 'Confirmar senha',
              helperText: '',
              hintStyle: const TextStyle(color: Colors.grey),
              isDense: true,
              suffixIcon: IconButton(
                icon: Icon(
                  visibility2 ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    visibility2 = !visibility2;
                  });
                },
              ),
            ),
            validator: (value) => Validator.comparePasswords(
                widget.passwordField1Controller.text,
                widget.passwordField2Controller.text),
            obscureText: visibility2,
          ),
        )
      ],
    );
  }
}
