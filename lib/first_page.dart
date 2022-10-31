import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:funku/components/logoo.dart';
import 'package:funku/components/privacy_first.dart';
import 'package:funku/components/sign.dart';
import 'package:funku/components/temp.dart';
import 'package:funku/login.dart';
import 'package:funku/sign_up.dart';
import 'package:funku/terms.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bgn.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.54,
                    right: 24,
                    left: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Let's get the party started!",
                            style: GoogleFonts.merriweather(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ],
                    ),
                    SizedBox(
                      height: 33,
                    ),
                    SizedBox(
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(60),
                          side: BorderSide(width: 2, color: Colors.white),
                          shape: StadiumBorder(),
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => LogIn()));
                        },
                        child: Text("Login",
                            style: TextStyle(
                                color: Color.fromARGB(255, 32, 9, 99),
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 48,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size.fromHeight(60),
                          side: BorderSide(width: 2, color: Colors.white),
                          shape: StadiumBorder(),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUp()));
                        },
                        child: Text("Signup",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "or",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SocalIcon(
                          iconSrc: "assets/combinedShape4.svg",
                          press: () {},
                        ),
                        SocalIcon(
                          iconSrc: "assets/combinedShape3.svg",
                          press: () {},
                        ),
                        SocalIcon(
                          iconSrc: "assets/combinedShape2.svg",
                          press: () {},
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'By proceeding, you agree to our ',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w400),
                          children: [
                            TextSpan(
                                text: 'Terms of Service ',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              TermsConditions()))),
                            TextSpan(
                              text: 'and',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 18,
                      child: RichText(
                        text: TextSpan(
                            text: '',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                            children: [
                              TextSpan(
                                text: 'Privacy Policy',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => PriPolicy())),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
