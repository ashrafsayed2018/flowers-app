import 'package:flowwer_app/constants/colors.dart';
import 'package:flowwer_app/pages/register.dart';
import 'package:flowwer_app/widgets/custom_button.dart';
import 'package:flowwer_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 242, 243, 242),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "صفحة تسجيل دخول",
                style: TextStyle(fontSize: 24),
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
              const CustomButton(text: "دخول", color: btnGreen),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "لا تملك حساب بعد?",
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const Register())));
                      },
                      child: const Text(
                        "تسجيل",
                        style: TextStyle(fontSize: 18),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
