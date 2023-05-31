import 'package:flutter/material.dart';
import 'package:ife/views/create_publication/create_publication_screen.dart';
import 'package:ife/views/my_favorites/my_favorites_screen.dart';
import 'package:ife/views/my_profile/my_profile_screen.dart';
import 'package:ife/views/my_publications/my_publications_screen.dart';
import 'package:ife/views/sign_in/sign_in_screen.dart';
import 'package:ife/views/sign_up/sign_up_screen.dart';
import 'package:ife/views/forgotten_password/forgotten_password_screen.dart';
import 'package:ife/views/forgotten_password/validation_code_screen.dart';
import 'package:ife/views/forgotten_password/redefine_password_screen.dart';
import 'package:ife/views/home/home_screen.dart';
import 'package:ife/views/privacy_policy/privacy_policy_screen.dart';
import 'package:ife/views/service_terms/service_terms_screen.dart';
import 'package:ife/views/report_a_problem/report_a_problem_screen.dart';
import 'package:ife/views/about/about_screen.dart';

var routes = <String, WidgetBuilder>{
  '/': (BuildContext ctx) => const SignInScreen(),
  '/sign_in': (BuildContext ctx) => const SignInScreen(),
  '/sign_up': (BuildContext ctx) => const SignUpScreen(),
  '/forgotten_password': (BuildContext ctx) => const ForgottenPasswordScreen(),
  '/forgotten_password/validation_code': (BuildContext ctx) =>
      const ValidationCodeScreen(),
  '/forgotten_password/redefine_password': (BuildContext ctx) =>
      const RedefinePasswordScreen(),
  '/home': (BuildContext ctx) => const HomeScreen(),
  '/home/my_profile': (BuildContext ctx) => const MyProfileScreen(),
  '/home/my_favorites': (BuildContext ctx) => const MyFavoritesScreen(),
  '/home/my_publications': (BuildContext ctx) => const MyPublicationsScreen(),
  '/home/create_publication': (BuildContext ctx) =>
      const CreatePublicationScreen(),
  '/home/privacy_policy': (BuildContext ctx) => const PrivacyPolicyScreen(),
  '/home/service_terms': (BuildContext ctx) => const ServiceTermsScreen(),
  '/home/report_a_problem': (BuildContext ctx) => const ReportAProblemScreen(),
  '/home/about': (BuildContext ctx) => const AboutScreen()
};
