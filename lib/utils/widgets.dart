import 'package:flutter/material.dart';

import 'consts.dart';

SizedBox signUpButton(double height, double width, VoidCallback onPressed) {
  return SizedBox(
    width: width,
    height: height,
    child: ElevatedButton(
      onPressed: onPressed,
      child: Text(tsignup.toUpperCase()),
    ),
  );
}

SizedBox logInButton(double height, double width, VoidCallback onPressed) {
  return SizedBox(
    width: width,
    height: height,
    child: ElevatedButton(
      onPressed: onPressed,
      child: Text(
        tlogin.toUpperCase(),
      ),
    ),
  );
}

errorMessage(BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Container(
      padding: const EdgeInsets.all(8),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red.shade300,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: const Row(children: [
        Icon(
          Icons.error,
          color: Colors.deepPurple,
          size: 30,
        ),
        SizedBox(
          width: 30,
        ),
        SizedBox(
          width: 120,
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 16,
                ),
                Text(
                  " incorrect \n email/password ",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    ),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    elevation: 0,
  ));
}

errorMessageEmailInvalid(BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Container(
      padding: const EdgeInsets.all(8),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red.shade300,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: const Row(children: [
        Icon(
          Icons.error,
          color: Colors.deepPurple,
          size: 30,
        ),
        SizedBox(
          width: 30,
        ),
        SizedBox(
          width: 120,
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 16,
                ),
                Text(
                  " email invalide ",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    ),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    elevation: 0,
  ));
}

Widget createTextField(double width, TextEditingController controller,
    String text, Icon preficIcon) {
  return SizedBox(
    width: width,
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: preficIcon,
        label: Text(
          text.toUpperCase(),
          style: TextStyle(
            color: Colors.deepPurple.shade300,
          ),
        ),
      ),
    ),
  );
}

Widget createEmailFormField(
  TextEditingController controller,
  Function emailValidation,
  bool emailIconVisible,
  bool isEmailCorrect,
  String labelText,
) {
  return SizedBox(
    width: 350.0,
    child: TextFormField(
      controller: controller,
      onChanged: (value) {
        emailValidation(value);
      },
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.alternate_email_rounded,
        ),
        suffixIcon: Visibility(
          visible: emailIconVisible,
          child: isEmailCorrect == false
              ? const Icon(
                  Icons.close_sharp,
                  color: Colors.red,
                )
              : const Icon(
                  Icons.done,
                  color: Colors.green,
                ),
        ),
        label: Text(
          labelText.toUpperCase(),
          style: TextStyle(
            color: Colors.deepPurple.shade300,
          ),
        ),
      ),
      keyboardType: TextInputType.emailAddress,
    ),
  );
}

Widget createPasswordFormField(
    TextEditingController controller,
    void Function(String) showAndHideConfirmedPasswordIcon,
    bool passwordVisible,
    bool passwordIconVisible,
    String labelText,
    VoidCallback onPressed) {
  return SizedBox(
    width: 350.0,
    child: TextFormField(
      controller: controller,
      onChanged: (value) => showAndHideConfirmedPasswordIcon(value),
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.password),
        suffixIcon: IconButton(
          color: Colors.deepPurple.shade300,
          icon: Visibility(
            visible: passwordIconVisible,
            child: Icon(
              passwordVisible ? Icons.visibility : Icons.visibility_off,
            ),
          ),
          onPressed: onPressed,
        ),
        label: Text(
          labelText.toUpperCase(),
          style: TextStyle(
            color: Colors.deepPurple.shade300,
          ),
        ),
      ),
      obscureText: passwordVisible,
    ),
  );
}
