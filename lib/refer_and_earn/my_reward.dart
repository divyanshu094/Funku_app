import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../deals.dart';

class MyReward extends StatefulWidget {
  const MyReward({Key? key}) : super(key: key);

  @override
  State<MyReward> createState() => _BaseModelState();
}

class _BaseModelState extends State<MyReward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Reward(),
    );
  }
}

class Reward extends StatefulWidget {
  const Reward({Key? key}) : super(key: key);

  @override
  State<Reward> createState() => _BodyState();
}

class _BodyState extends State<Reward> {
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
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => DealsPage()));
              },
              icon: Icon(Icons.arrow_back_ios_outlined)),
          title: Text(
            "Refer & Earn",
            style: GoogleFonts.merriweather(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
            padding:
                const EdgeInsets.only(left: 28, right: 28, bottom: 28, top: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Rewards Balance",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Row(
                  children: [
                    Text(
                      "₹ 1000",
                      style: GoogleFonts.openSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.019,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // minimumSize: Size.fromHeight(24),

                        side: BorderSide(width: 1, color: Colors.white),
                        shape: StadiumBorder(),
                        primary: Colors.white,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Reward History",
                        style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 133, 1)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.024,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text.rich(
                      TextSpan(
                        text: 'My ',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Rewards',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                    )),
                    Expanded(
                      child: Text(
                        "My Referrals",
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white54),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        gradient: LinearGradient(
                            colors: [
                              Colors.white38,
                              Colors.white10,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                      height: MediaQuery.of(context).size.height * 0.21,
                      width: MediaQuery.of(context).size.width * 0.39,
                      padding: EdgeInsets.only(
                          top: 15, bottom: 10, left: 10, right: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.white54,
                                    size: MediaQuery.of(context).size.width *
                                        0.12,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.5),
                                    child: Image.asset(
                                      "assets/review/imageSuccess@3x.png",
                                      scale: 9,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.008,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "You earned",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white54,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.006,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "₹ 1000",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.008,
                          ),
                          Container(
                            height: 28,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.white)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 1.0, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.account_circle_rounded,
                                    color: Colors.white60,
                                  ),
                                  Text(
                                    "Abhishek Singh",
                                    style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        gradient: LinearGradient(
                            colors: [
                              Colors.white38,
                              Colors.white10,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                      height: MediaQuery.of(context).size.height * 0.21,
                      width: MediaQuery.of(context).size.width * 0.39,
                      padding: EdgeInsets.only(
                          top: 15, bottom: 10, left: 10, right: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.white54,
                                    size: MediaQuery.of(context).size.width *
                                        0.12,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.5),
                                    child: Image.asset(
                                      "assets/review/imageSuccess@3x.png",
                                      scale: 9,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.008,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "You earned",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white54,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.006,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "₹ 1000",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.008,
                          ),
                          Container(
                            height: 28,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.white)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 1.0, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.account_circle_rounded,
                                    color: Colors.white60,
                                  ),
                                  Text(
                                    "Abhishek Singh",
                                    style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.037,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        gradient: LinearGradient(
                            colors: [
                              Colors.white38,
                              Colors.white10,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                      height: MediaQuery.of(context).size.height * 0.21,
                      width: MediaQuery.of(context).size.width * 0.39,
                      padding: EdgeInsets.only(
                          top: 15, bottom: 10, left: 10, right: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.white54,
                                    size: MediaQuery.of(context).size.width *
                                        0.12,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.5),
                                    child: Image.asset(
                                      "assets/review/imageSuccess@3x.png",
                                      scale: 9,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.008,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "You earned",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white54,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.006,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "₹ 1000",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.008,
                          ),
                          Container(
                            height: 28,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.white)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 1.0, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.account_circle_rounded,
                                    color: Colors.white60,
                                  ),
                                  Text(
                                    "Abhishek Singh",
                                    style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        gradient: LinearGradient(
                            colors: [
                              Colors.white38,
                              Colors.white10,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                      height: MediaQuery.of(context).size.height * 0.21,
                      width: MediaQuery.of(context).size.width * 0.39,
                      padding: EdgeInsets.only(
                          top: 15, bottom: 10, left: 10, right: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.white54,
                                    size: MediaQuery.of(context).size.width *
                                        0.12,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.5),
                                    child: Image.asset(
                                      "assets/review/imageSuccess@3x.png",
                                      scale: 9,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.008,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "You earned",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white54,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.006,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "₹ 1000",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.008,
                          ),
                          Container(
                            height: 28,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.white)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 1.0, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.account_circle_rounded,
                                    color: Colors.white60,
                                  ),
                                  Text(
                                    "Abhishek Singh",
                                    style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.008,
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
                  child: const Text("Refer & Earn",
                      style: TextStyle(
                          color: Color.fromARGB(255, 32, 9, 99),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
              ],
            )),
      ),
    );
  }
}
