// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../utils/consts.dart';
import '../utils/widgets.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
      print("-----------------------------------");
      errorMessageEmailInvalid(context);
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
                "entrer votre email pour réinitialiser votre mot de passe",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.deepPurple)),
          ),
          const SizedBox(
            height: 30,
          ),
          createTextField(inputWidth, emailController, temail,
              const Icon(Icons.alternate_email)),
          spacebetweenfields(),
          SizedBox(
            width: inputWidth,
            height: buttonHeight,
            child: ElevatedButton(
              onPressed: passwordReset,
              child: Text("envoyer le code".toUpperCase()),
            ),
          ),
        ],
      ),
    );
  }
}
