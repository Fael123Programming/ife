import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ife/utils/screen_percentage.dart';
import 'package:ife/utils/screen_sizer.dart';
import 'package:ife/utils/validator.dart';
import 'package:ife/widgets/phone_number_input/br_phone_number_formatter.dart';

class PhoneNumberInput extends StatefulWidget {
  const PhoneNumberInput({Key? key}) : super(key: key);

  @override
  PhoneNumberInputState createState() => PhoneNumberInputState();
}

class PhoneNumberInputState extends State<PhoneNumberInput> {
  final textFormFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSizer = ScreenSizer(context);
    return Container(
      margin: EdgeInsets.only(
        bottom: screenSizer.convertToDeviceScreenHeight(
          screenPercentage: ScreenPercentage.marginInbetweenTextFormFields,
        ),
      ),
      child: TextFormField(
        enableInteractiveSelection: false,
        controller: textFormFieldController,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          counter: const Offstage(),
          hintText: 'Número de telefone',
          hintStyle: GoogleFonts.roboto(color: Colors.grey),
          errorText: '',
          border: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(),
          errorBorder: const OutlineInputBorder(),
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
