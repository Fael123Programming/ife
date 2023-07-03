import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ife/utils/screen_sizer.dart';
import 'package:ife/utils/screen_percentage.dart';
import 'package:ife/views/sign_in/sign_in_form.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscurePassword = true;
  IconData passwordIconData = Icons.visibility_outlined;

  @override
  Widget build(BuildContext context) {
    final screenSizer = ScreenSizer(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: EdgeInsets.only(
                top: screenSizer.convertToDeviceScreenHeight(
                  screenPercentage: ScreenPercentage.marginTopAForthHalfScreen,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Bem Vindo a',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 48,
                    ),
                  ),
                  Text(
                    'IFeirinha!',
                    style: GoogleFonts.oleoScript(
                      color: const Color.fromRGBO(255, 178, 15, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 48,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: screenSizer.convertToDeviceScreenHeight(
                        screenPercentage: ScreenPercentage.smoothMarginTop,
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: GoogleFonts.roboto(
                        fontSize: 34,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    'Entre, é de graça',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SignInForm(),
                  Container(
                    margin: EdgeInsets.only(
                      top: screenSizer.convertToDeviceScreenHeight(
                        screenPercentage: ScreenPercentage.bigMarginTop,
                      ),
                    ),
                    child: RichText(
                      text: TextSpan(
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Não tem uma conta? ',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          TextSpan(
                            text: 'Cadastre-se',
                            style: TextStyle(
                              fontSize: 16,
                              textBaseline: TextBaseline.alphabetic,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                              color: Theme.of(context).colorScheme.primary,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(
                                  context,
                                  '/sign_up',
                                );
                              },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
