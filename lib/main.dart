import 'package:flutter/material.dart';
import 'package:ife/routes/routes.dart';
import 'package:ife/utils/theme.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      routes: routes,
      initialRoute: '/',
    )
  );
}
