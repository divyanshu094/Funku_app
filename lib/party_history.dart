import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'refer_and_earn/refer_benefit.dart';

class PartyHistory extends StatefulWidget {
  const PartyHistory({Key? key}) : super(key: key);

  @override
  State<PartyHistory> createState() => _BaseModelState();
}

class _BaseModelState extends State<PartyHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: History(),
    );
  }
}

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _BodyState();
}

class _BodyState extends State<History> {
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
                    MaterialPageRoute(builder: (context) => ReferBenefit()));
              },
              icon: Icon(Icons.arrow_back_ios_outlined)),
          elevation: 0,
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 28, right: 28, bottom: 28),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Party History",
                        style: GoogleFonts.merriweather(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Colors.white))
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.white30),
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 15),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "Party Points",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white70,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "256",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.diamond,
                                      color: Colors.white,
                                      size: 45,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.023,
                ),
                Row(
                  children: const [
                    Text(
                      "History",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.align_horizontal_left_rounded,
                      color: Colors.white70,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.dehaze_rounded,
                      color: Colors.white70,
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white24,
                                    Colors.white.withOpacity(0.1),
                                    Colors.white.withOpacity(0.05),
                                    Colors.white.withOpacity(0.03),
                                    Colors.white.withOpacity(0.01),
                                    Colors.white.withOpacity(0.03),
                                    Colors.white.withOpacity(0.05),
                                    Colors.white.withOpacity(0.09),
                                    Colors.white24,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                            ),
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width * 0.9,
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 15),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white24,
                                  Colors.white.withOpacity(0.07),
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.03),
                                  Colors.white.withOpacity(0.01),
                                  Colors.white.withOpacity(0.005),
                                  Colors.white.withOpacity(0.003),
                                  Colors.white.withOpacity(0.001),
                                  Colors.white.withOpacity(0.001),
                                  Colors.white.withOpacity(0.003),
                                  Colors.white.withOpacity(0.005),
                                  Colors.white.withOpacity(0.01),
                                  Colors.white.withOpacity(0.02),
                                  Colors.white.withOpacity(0.04),
                                  Colors.white.withOpacity(0.06),
                                  Colors.white.withOpacity(0.07),
                                  Colors.white.withOpacity(0.09),
                                  Colors.white.withOpacity(0.11),
                                  Colors.white24,
                                ],
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width * 0.9,
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "May 5/22",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white54,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Amount",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white54,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Whiskey Samba",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "₹ 50,000 ",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white24,
                                    Colors.white.withOpacity(0.1),
                                    Colors.white.withOpacity(0.05),
                                    Colors.white.withOpacity(0.03),
                                    Colors.white.withOpacity(0.01),
                                    Colors.white.withOpacity(0.03),
                                    Colors.white.withOpacity(0.05),
                                    Colors.white.withOpacity(0.09),
                                    Colors.white24,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                            ),
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width * 0.9,
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 15),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white24,
                                  Colors.white.withOpacity(0.07),
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.03),
                                  Colors.white.withOpacity(0.01),
                                  Colors.white.withOpacity(0.005),
                                  Colors.white.withOpacity(0.003),
                                  Colors.white.withOpacity(0.001),
                                  Colors.white.withOpacity(0.001),
                                  Colors.white.withOpacity(0.003),
                                  Colors.white.withOpacity(0.005),
                                  Colors.white.withOpacity(0.01),
                                  Colors.white.withOpacity(0.02),
                                  Colors.white.withOpacity(0.04),
                                  Colors.white.withOpacity(0.06),
                                  Colors.white.withOpacity(0.07),
                                  Colors.white.withOpacity(0.09),
                                  Colors.white.withOpacity(0.11),
                                  Colors.white24,
                                ],
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width * 0.9,
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "May 5/22",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white54,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Amount",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white54,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Whiskey Samba",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "₹ 50,000 ",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white24,
                                    Colors.white.withOpacity(0.1),
                                    Colors.white.withOpacity(0.05),
                                    Colors.white.withOpacity(0.03),
                                    Colors.white.withOpacity(0.01),
                                    Colors.white.withOpacity(0.03),
                                    Colors.white.withOpacity(0.05),
                                    Colors.white.withOpacity(0.09),
                                    Colors.white24,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                            ),
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width * 0.9,
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 15),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white24,
                                  Colors.white.withOpacity(0.07),
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.03),
                                  Colors.white.withOpacity(0.01),
                                  Colors.white.withOpacity(0.005),
                                  Colors.white.withOpacity(0.003),
                                  Colors.white.withOpacity(0.001),
                                  Colors.white.withOpacity(0.001),
                                  Colors.white.withOpacity(0.003),
                                  Colors.white.withOpacity(0.005),
                                  Colors.white.withOpacity(0.01),
                                  Colors.white.withOpacity(0.02),
                                  Colors.white.withOpacity(0.04),
                                  Colors.white.withOpacity(0.06),
                                  Colors.white.withOpacity(0.07),
                                  Colors.white.withOpacity(0.09),
                                  Colors.white.withOpacity(0.11),
                                  Colors.white24,
                                ],
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width * 0.9,
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "May 5/22",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white54,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Amount",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white54,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Whiskey Samba",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "₹ 50,000 ",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white24,
                                    Colors.white.withOpacity(0.1),
                                    Colors.white.withOpacity(0.05),
                                    Colors.white.withOpacity(0.03),
                                    Colors.white.withOpacity(0.01),
                                    Colors.white.withOpacity(0.03),
                                    Colors.white.withOpacity(0.05),
                                    Colors.white.withOpacity(0.09),
                                    Colors.white24,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                            ),
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width * 0.9,
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 15),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white24,
                                  Colors.white.withOpacity(0.07),
                                  Colors.white.withOpacity(0.05),
                                  Colors.white.withOpacity(0.03),
                                  Colors.white.withOpacity(0.01),
                                  Colors.white.withOpacity(0.005),
                                  Colors.white.withOpacity(0.003),
                                  Colors.white.withOpacity(0.001),
                                  Colors.white.withOpacity(0.001),
                                  Colors.white.withOpacity(0.003),
                                  Colors.white.withOpacity(0.005),
                                  Colors.white.withOpacity(0.01),
                                  Colors.white.withOpacity(0.02),
                                  Colors.white.withOpacity(0.04),
                                  Colors.white.withOpacity(0.06),
                                  Colors.white.withOpacity(0.07),
                                  Colors.white.withOpacity(0.09),
                                  Colors.white.withOpacity(0.11),
                                  Colors.white24,
                                ],
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width * 0.9,
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "May 5/22",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white54,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Amount",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white54,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Whiskey Samba",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "₹ 50,000 ",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
