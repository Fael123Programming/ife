import 'package:flutter/material.dart';
import 'package:ife/widgets/button.dart';
import 'package:ife/widgets/image_input.dart';
import 'package:ife/widgets/text_input.dart';
import 'package:ife/widgets/phone_number_input/phone_number_input.dart';
import 'package:ife/widgets/custom_app_bar.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreen();
}

class _MyProfileScreen extends State<MyProfileScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController =
      TextEditingController(text: 'Marcos Paulo');
  final TextEditingController emailController =
      TextEditingController(text: 'marcos.paulo@estudante.ifgoiano.edu.br');
  final TextEditingController phoneNumberController =
      TextEditingController(text: '(64) 99367-9910');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Meu Perfil',
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                const ImageInput(
                  width: 120,
                  height: 120,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 350,
                        child: TextInput(
                          hintText: 'Nome Completo',
                          inputType: TextInputType.name,
                          controller: nameController,
                        ),
                      ),
                      SizedBox(
                        width: 350,
                        child: TextInput(
                          hintText: 'E-mail',
                          inputType: TextInputType.emailAddress,
                          controller: emailController,
                        ),
                      ),
                      SizedBox(
                        width: 350,
                        child: PhoneNumberInput(
                          controller: phoneNumberController,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 30),
                          child: const Text(
                            'Mudar senha',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsetsDirectional.only(
                          top: 30,
                        ),
                        child: Button(
                          text: 'Salvar',
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Salvo'),
                                  duration: Duration(seconds: 1),
                                ),
                              );
                              Navigator.pop(context);
                            }
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
