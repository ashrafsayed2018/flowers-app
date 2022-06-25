import 'package:flowwer_app/constants/colors.dart';
import 'package:flowwer_app/pages/login.dart';
import 'package:flowwer_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 242, 243, 242),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 150, right: 30, left: 30, bottom: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "صفحة تسجيل حساب",
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextField(
                  textInputType: TextInputType.text,
                  hintText: "ادخل اسم المستخدم",
                  isPassword: false,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextField(
                  textInputType: TextInputType.emailAddress,
                  hintText: "ادخل البريد الالكتروني",
                  isPassword: false,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextField(
                  textInputType: TextInputType.text,
                  hintText: "ادخل رقم سري",
                  isPassword: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomButton(text: "تسجيل", color: btnGreen),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "لديك حساب بالفعل ?",
                      style: TextStyle(fontSize: 18),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const Login())));
                        },
                        child: const Text(
                          "دخول",
                          style: TextStyle(fontSize: 18),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
