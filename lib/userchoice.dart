// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:attendink/utils/consts.dart';
import 'package:attendink/view/login_screens/administrateur_login.dart';
import 'package:attendink/view/login_screens/etudiant_login.dart';
import 'package:attendink/view/login_screens/professeur_login.dart';

import 'package:flutter/material.dart';

class UserChoice extends StatefulWidget {
  const UserChoice({super.key});

  @override
  State<UserChoice> createState() => _UserChoiceState();
}

class _UserChoiceState extends State<UserChoice> {
  void SelectUser(BuildContext context, int n) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          if (n == 1) {
            return ProfesseurLogin();
          } else if (n == 2) {
            return EtudiantLogin();
          }
          return AdministrateurLogin();
        },
      ),
    );
  }

  final profimg = 'assets/images/users.JPG';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 60.0,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 10, 0, 0),
            alignment: Alignment.topLeft,
            //width: 100,
            child: Text(
              ttitle.toUpperCase(),
              style: TextStyle(
                fontFamily: 'SourceSerifPro-BoldItalic',
                letterSpacing: 2.0,
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Color(0xFF6F35A5),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(40, 0, 0, 0),
            alignment: Alignment.topLeft,
            child: Text(
              tsubtitile.toUpperCase(),
              style: TextStyle(
                fontFamily: "SourceSerifPro-BoldItalic",
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Color(0xFF6F35A5),
              ),
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),
          Image.asset(
            //this is the image to be changed
            profimg,
          ),
          const SizedBox(
            height: 60.0,
          ),
          SizedBox(
            height: 60.0,
            width: 350.0,
            child: ElevatedButton(
              onPressed: () {
                SelectUser(context, 1);
              },
              child: Text(
                tprofesseur.toUpperCase(),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 60.0,
            width: 350.0,
            child: ElevatedButton(
              onPressed: () {
                SelectUser(context, 2);
              },
              child: Text(
                tetudiant.toUpperCase(),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 60.0,
            width: 350.0,
            child: ElevatedButton(
              onPressed: () {
                SelectUser(context, 3);
              },
              child: Text(
                tadministrateur.toUpperCase(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
