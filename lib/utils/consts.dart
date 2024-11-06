// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);
const double defaultPadding = 16.0;

const CURVE_HEIGHT = 160.0;
const AVATAR_RADIUS = CURVE_HEIGHT * 0.28;
const AVATAR_DIAMETER = AVATAR_RADIUS * 2;

const double heightbetweenfields = 10.0;

const double buttonHeight = 50.0;
const double buttonWidth = 350;
const double inputWidth = 350.0;

//picture
const defaultProfilePicture = 'assets/images/default.jpg';

//text in the userchoice
const String ttitle = 'welcome to';
const String tsubtitile = 'attendink';
const String tprofesseur = 'professeur';
const String tetudiant = 'etudiant';
const String tadministrateur = 'administrateur';

//text to use in our app
String tforgotpassword = 'forgot password';
String tcreateaccount = 'create an account';
const String tlogin = 'login';
const String tsignup = 'sign up';
const String temail = 'email';
const String tpassword = 'password';
const String tConfirmPassword = 'confirm password';
const String tname = 'name';
const String tfiliere = 'filiere';
const String tmatiere = 'matiere';
const tcne = 'cne';
const tsemestre = 'semestre';
const tgroupe = 'groupe';

//reatulisable function

SizedBox spacebetweenfields() {
  return const SizedBox(
    height: heightbetweenfields,
  );
}
