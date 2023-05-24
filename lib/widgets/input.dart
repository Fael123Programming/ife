import 'package:flutter/material.dart';
import 'package:ife/utils/validator.dart';

class Input extends StatefulWidget {
  final String type;
  final bool focus;

  const Input({Key? key, required this.type, this.focus = false})
      : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final controller = TextEditingController();
  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: widget.type == 'Email'
            ? TextInputType.emailAddress
            : TextInputType.text,
        controller: controller,
        obscureText: widget.type == 'Senha' ? !visibility : visibility,
        autofocus: widget.focus,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
            focusedBorder: const OutlineInputBorder(),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.error,
                width: 1.0,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.error,
                width: 1.0,
              ),
            ),
            hintText: widget.type,
            helperText: '',
            hintStyle: const TextStyle(color: Colors.grey),
            isDense: true,
            suffixIcon: widget.type == 'Senha'
                ? IconButton(
                    icon: Icon(
                      visibility ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        visibility = !visibility;
                      });
                    },
                  )
                : null),
        validator: (value) {
          if (widget.type == 'Email') {
            return Validator.validateEmail(value);
          } else if (widget.type == 'Senha') {
            return Validator.validatePassword(value);
          } else if (widget.type == 'Nome completo') {
            return Validator.validateName(value);
          } else {
            return 'Unknown widget type';
          }
        });
  }
}
