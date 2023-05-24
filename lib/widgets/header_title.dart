import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderTitle extends StatelessWidget {
  final String title, subtitle;

  const HeaderTitle({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            child: Text(title, style: Theme.of(context).textTheme.headline4),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 7.0,
            ),
            child: Text(
              subtitle,
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                letterSpacing: 0.15,
                color: const Color(0xFF253434),
              ),
            ),
          )
        ],
      ),
    );
  }
}
