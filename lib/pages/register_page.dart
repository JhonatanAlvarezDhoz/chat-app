import 'package:flutter/material.dart';

import 'package:chat_app/widgets/index.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F2F2),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Logo(
                text: "Register",
              ),
              _Form(),
              Labels(
                firstLabelText: "ya tienes cuenta?",
                secondLabelText: "Login",
                route: 'login',
              ),
              Text(
                "Terminos y condiciones",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  const _Form();

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            CustomInput(
              prefixIcon: Icons.person,
              placeholder: "Name",
              keyboardType: TextInputType.name,
              textController: nameController,
              obscureText: false,
            ),
            CustomInput(
              prefixIcon: Icons.email,
              placeholder: "Email",
              textController: emailController,
              obscureText: true,
            ),
            CustomInput(
              prefixIcon: Icons.lock,
              placeholder: "Passworrd",
              textController: passwordController,
              obscureText: true,
            ),
            SizedBox(height: 20),
            CustomButtom(
              text: "Register",
              onTap: () {
                print(emailController.text);
                print(passwordController.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
