import 'package:flutter/material.dart';
import 'package:ife/utils/validator.dart';

class TextInput extends StatefulWidget {
  final Function()? onEditingComplete;
  final bool focus, obscureText;
  final FocusNode? focusNode;
  final TextInputType? inputType;
  final String hintText;

  const TextInput(
      {Key? key,
      this.onEditingComplete,
      this.focusNode,
      this.inputType,
      this.focus = false,
      this.obscureText = false,
      this.hintText = ''})
      : super(key: key);

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  final controller = TextEditingController();
  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.focusNode,
      onEditingComplete: widget.onEditingComplete,
      keyboardType: widget.inputType,
      controller: controller,
      obscureText: widget.obscureText ? !visibility : visibility,
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
        hintText: widget.hintText,
        helperText: '',
        hintStyle: const TextStyle(color: Colors.grey),
        isDense: true,
        suffixIcon: widget.obscureText
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
            : null,
      ),
      validator: (value) {
        if (widget.inputType == TextInputType.emailAddress) {
          return Validator.validateEmail(value);
        } else if (widget.obscureText) {
          return Validator.validatePassword(value);
        } else {
          return Validator.validateName(value);
        }
      },
    );
  }
}
