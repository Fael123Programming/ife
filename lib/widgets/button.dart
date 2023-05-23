import 'package:flutter/material.dart';
import 'package:ife/utils/screen_sizer.dart';
import 'package:ife/utils/screen_percentage.dart';

class Button extends StatefulWidget {
  final String text;
  final void Function() onPressed;
  final bool specialWidth, reducedMarginTop;

  const Button({
    Key? key,
    this.specialWidth = false,
    this.reducedMarginTop = false,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    final screenSizer = ScreenSizer(context);
    screenSizer.adjustHeightIfDeviceIsiOS();
    return SizedBox(
      width: screenSizer.convertToDeviceScreenWidth(
        screenPercentage: widget.specialWidth
            ? ScreenPercentage.buttonSpecialWidth
            : ScreenPercentage.buttonWidth,
      ),
      height: screenSizer.convertToDeviceScreenHeight(
        screenPercentage: ScreenPercentage.buttonHeight,
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Theme.of(context).colorScheme.primary,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                screenSizer.convertToDeviceScreenWidth(
                  screenPercentage: ScreenPercentage.buttonRadius,
                ),
              ),
            ),
          ),
        ),
        child: Text(
          widget.text,
          style: Theme.of(context).textTheme.button,
        ),
        onPressed: widget.onPressed,
      ),
    );
  }
}
