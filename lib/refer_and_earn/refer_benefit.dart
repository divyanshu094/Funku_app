import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_reward.dart';

class ReferBenefit extends StatefulWidget {
  const ReferBenefit({Key? key}) : super(key: key);

  @override
  State<ReferBenefit> createState() => _BaseModelState();
}

class _BaseModelState extends State<ReferBenefit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Benefit(),
    );
  }
}

class Benefit extends StatefulWidget {
  const Benefit({Key? key}) : super(key: key);

  @override
  State<Benefit> createState() => _BodyState();
}

class _BodyState extends State<Benefit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.png'), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyReward()));
                },
                icon: Icon(Icons.arrow_back_ios_outlined)),
            title: Text(
              "Refer & Earn",
              style: GoogleFonts.merriweather(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            centerTitle: true,
            elevation: 0,
          ),
          body: Column(
            children: [
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.04,
              // ),
              Spacer(),
              Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Center(
                        child: Icon(
                          Icons.circle,
                          color: Colors.white30,
                          size: MediaQuery.of(context).size.height * 0.2,
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: SvgPicture.asset(
                      "assets/review/imageSuccess.svg",
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: MediaQuery.of(context).size.height * 0.51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(32),
                      topLeft: Radius.circular(32)),
                  gradient: LinearGradient(colors: [
                    Colors.white38,
                    Colors.white10,
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, right: 25, bottom: 25),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.038,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Get reward benefits upto",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "₹ 1000",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.028,
                      ),
                      DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(7),
                        padding: EdgeInsets.all(0),
                        color: Colors.white,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.white38,
                                  Colors.white10,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Your referral code: ",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "JOND22879",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.copy,
                                    color: Colors.white70,
                                    size: 18,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Row(
                        children: [
                          Text(
                            "Frequently asked questions",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.008,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.033,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "What is refer & earn program",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.008,
                      // ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.033,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "How does it work?",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.008,
                      // ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.033,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Where can I use these reward points?",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.008,
                      // ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "View All",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white54,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          minimumSize: Size.fromHeight(48),
                          primary: Colors.white,
                          onSurface: Colors.white,
                        ),
                        onPressed: () {
                          //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PropertyThree()));
                        },
                        child: const Text("Share",
                            style: TextStyle(
                                color: Color.fromARGB(255, 32, 9, 99),
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
