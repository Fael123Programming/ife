import 'package:flutter/material.dart';
import 'package:ife/views/sign_in/sign_in_screen.dart';
import 'package:ife/views/sign_up/sign_up_screen.dart';
import 'package:ife/views/forgotten_password/forgotten_password_screen.dart';
import 'package:ife/views/forgotten_password/validation_code_screen.dart';
import 'package:ife/views/forgotten_password/redefine_password_screen.dart';
import 'package:ife/views/home/home_screen.dart';

var routes = <String, WidgetBuilder>{
  '/': (BuildContext ctx) => const SignInScreen(),
  '/signin': (BuildContext ctx) => const SignInScreen(),
  '/signup': (BuildContext ctx) => const SignUpScreen(),
  '/forgottenpassword': (BuildContext ctx) => const ForgottenPasswordScreen(),
  '/forgottenpassword/validationcode': (BuildContext ctx) =>
      const ValidationCodeScreen(),
  '/forgottenpassword/redefinepassword': (BuildContext ctx) =>
      const RedefinePasswordScreen(),
  '/home': (BuildContext ctx) => const HomeScreen()
};
