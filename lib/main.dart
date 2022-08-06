import 'package:flutter/material.dart';
import 'package:funku/choose_an_avatar.dart';
import 'package:funku/complited.dart';
import 'package:funku/components/components/variables.dart';
import 'package:funku/contact_us.dart';
import 'package:funku/dashboard.dart';
import 'package:funku/first_page.dart';
import 'package:funku/genre.dart';
import 'package:funku/login.dart';
import 'package:funku/notification.dart';
import 'package:funku/pd_birthday.dart';
import 'package:funku/persionaldetails.dart';
import 'package:funku/preference_drink.dart';
import 'package:funku/privacy.dart';
import 'package:funku/rating.dart';
import 'package:funku/sign_up.dart';
import 'package:funku/terms.dart';
import 'package:funku/tests/chipsssssss.dart';
import 'package:funku/tests/color_change.dart';
import 'package:funku/verify.dart';
import 'package:funku/verify_login.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'datechecker',
    routes: {
      'login':(context) => FirstScreen(),
      'signup':(context) => SignUp(),
      'verify':(context) => VerifyPage(),
      'log':(context) => LogIn(),
      'ver':(context) => VerifyLogin(),
      'comp':(context) => ComP(),
      'terms':(context) => TermsCond(),
      'privacy':(context) => PrivacyPolicy(),
      "pd":(context) => PersonalDelails(),
      "chooseavatar":(context) => ChooseAvatar(),
      "birthday":(context) => PdBirthday(),
      'contact':(context) => ContactUs(),
      'preference':(context) => PreferDrink(),
      'dashboard':(context) => MyApp(),
      'notification':(context) => NotificationToday(),
      'genure':(context) => MusicGenre(),
      'test':(context) => HomePage(),
      'rating':(context) => RatingPage(),
      'color':(context) => ColorChange(),
      'datechecker':(context) => MyeApp()

      },
    )
  );
}