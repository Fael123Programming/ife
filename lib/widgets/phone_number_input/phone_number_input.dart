import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ife/utils/validator.dart';
import 'package:ife/widgets/phone_number_input/br_phone_number_formatter.dart';

class PhoneNumberInput extends StatefulWidget {
  final FocusNode? focusNode;
  final Function()? onEditingComplete;
  final TextEditingController? controller;

  const PhoneNumberInput(
      {Key? key, this.focusNode, this.onEditingComplete, this.controller})
      : super(key: key);

  @override
  PhoneNumberInputState createState() => PhoneNumberInputState();
}

class PhoneNumberInputState extends State<PhoneNumberInput> {
  final controller = TextEditingController();
  late TextEditingController textFormFieldController;

  @override
  Widget build(BuildContext context) {
    textFormFieldController =
        widget.controller != null ? widget.controller! : controller;
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: TextFormField(
        onEditingComplete: widget.onEditingComplete,
        focusNode: widget.focusNode,
        enableInteractiveSelection: false,
        controller: textFormFieldController,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          counter: const Offstage(),
          border: const OutlineInputBorder(
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
          hintText: 'Número de telefone',
          hintStyle: GoogleFonts.roboto(color: Colors.grey),
          isDense: true,
          prefixIcon: const Text(' +55 '),
          prefixIconConstraints:
              const BoxConstraints(minWidth: 0, minHeight: 0),
          prefixStyle: GoogleFonts.roboto(color: Colors.black),
        ),
        inputFormatters: <TextInputFormatter>[BrPhoneNumberFormatter()],
        maxLength: 15,
        onTap: () {
          textFormFieldController.selection = TextSelection.fromPosition(
            TextPosition(
              offset: textFormFieldController.text.length,
            ),
          );
        },
        validator: (value) => Validator.validatePhoneNumber(value),
      ),
    );
  }
}
