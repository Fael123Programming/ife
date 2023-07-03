import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({Key? key, String title = 'Segurança', bool centerTitle = false})
      : super(
            key: key,
            title: Text(
              title,
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            centerTitle: centerTitle);
}
