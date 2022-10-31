// @dart=2.9

import 'package:flutter/material.dart';
import 'package:funku/Create_a_party/Property1.dart';
import 'package:funku/Create_a_party/property2.dart';
import 'package:funku/add_artist/artist1.dart';
import 'package:funku/add_promoter/promoter1.dart';
import 'package:funku/choose_an_avatar.dart';
import 'package:funku/complited.dart';
import 'package:funku/components/components/variables.dart';
import 'package:funku/contact_us.dart';
import 'package:funku/dashboard.dart';
import 'package:funku/dashboard/home.dart';
import 'package:funku/dashboard/stackj_screen.dart';
import 'package:funku/first_page.dart';
import 'package:funku/genre.dart';
import 'package:funku/login.dart';
import 'package:funku/notification.dart';
import 'package:funku/payment/payment_completed.dart';
import 'package:funku/pd_birthday.dart';
import 'package:funku/persionaldetails.dart';
import 'package:funku/privacy.dart';
import 'package:funku/rating.dart';
import 'package:funku/sign_up.dart';
import 'package:funku/splash_screen/welcome_splash.dart';
import 'package:funku/terms.dart';
// import 'package:funku/tests/base.dart';
// import 'package:funku/tests/color_change.dart';
import 'package:funku/verify.dart';
import 'package:funku/verify_login.dart';

import 'Create_a_party/property3.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'login',
    routes: {
      'login': (context) => FirstScreen(),
      'signup': (context) => SignUp(),
      'verify': (context) => VerifyPage(),
      'log': (context) => LogIn(),
      'ver': (context) => VerifyLogin(),
      'comp': (context) => ComP(),
      'terms': (context) => TermsCond(),
      'privacy': (context) => PrivacyPolicy(),
      "pd": (context) => PersonalDelails(),
      "chooseavatar": (context) => ChooseAvatar(),
      "birthday": (context) => PdBirthday(),
      'contact': (context) => ContactUs(),
      'dashboard': (context) => MyApp(),
      'footer': (context) => Home1(),
      'notification': (context) => NotificationToday(),
      'genure': (context) => MusicGenre(),
      'rating': (context) => RatingPage(),
      'datechecker': (context) => MyeApp(),
      'splashWelcome': (context) => WelcomeSplash(),
      'pyCmp': (context) => PaymentComplete(),
      'propAdd': (context) => PropertyAdd(),
      'promoter': (context) => PromoterAdd(),
      'step2': (context) => ArtistAdd(),
      'stack': (context) => ScreenStack()
    },
  ));
}
