import 'package:flutter/material.dart';
import 'package:ife/views/sign_in/sign_in_screen.dart';
import 'package:ife/views/forgot_password/forgot_password_screen.dart';

var routes = <String, WidgetBuilder>{
  '/': (BuildContext ctx) => const SignInScreen(),
  '/signin': (BuildContext ctx) => const SignInScreen(),
  '/forgotpassword': (BuildContext ctx) => const ForgotPasswordScreen(),
  
};
