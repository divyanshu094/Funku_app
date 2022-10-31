import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../party_history.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({Key? key}) : super(key: key);

  @override
  State<PlaceOrder> createState() => _BaseModelState();
}

class _BaseModelState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Order(),
    );
  }
}

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _BodyState();
}

class _BodyState extends State<Order> {
  bool boxvalue = true;

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
                    MaterialPageRoute(builder: (context) => PartyHistory()));
              },
              icon: Icon(Icons.arrow_back_ios_outlined)),
          elevation: 0,
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 28),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Place Order",
                          style: GoogleFonts.merriweather(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Colors.white))
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        "Order Summary",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white54,
                          fontWeight: FontWeight.w400,
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
                        "Holi Fest",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "₹ 2500",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    children: [
                      Text(
                        "Handling Charges",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "₹ 150",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.007,
                  ),
                  SvgPicture.asset(
                    "assets/path5.svg",
                    color: Colors.white,
                    height: 3,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.007,
                  ),
                  Row(
                    children: [
                      Text(
                        "Order Total",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "₹ 2650",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.017,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: Checkbox(
                          value: boxvalue,
                          onChanged: (newValue) {
                            setState(() {
                              boxvalue = newValue!;
                            });
                          },
                          checkColor: Colors.black,
                          activeColor: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text("Add order as Gift",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                      ),
                      // SizedBox(
                      //   width: MediaQuery.of(context).size.width*0.05,
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.018,
                  ),
                  Row(
                    children: [
                      Text(
                        "Payment Mode",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white54,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.007,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Color.fromRGBO(128, 128, 188, 1),
                            size: 21,
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.all(3.0),
                          //   child: Icon(
                          //     Icons.circle,
                          //     color: Colors.white,
                          //     size: 15,
                          //   ),
                          // ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
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
                            width: MediaQuery.of(context).size.width * 0.8,
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 15),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
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
                            width: MediaQuery.of(context).size.width * 0.8,
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 15, right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: const [
                                    Image(
                                      height: 16,
                                      image: AssetImage(
                                        "assets/hdfc.png",
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Debit Card",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "**** **** 9889",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Expired",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromRGBO(237, 35, 42, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "John Doe",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Update",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromRGBO(0, 123, 182, 1),
                                        fontWeight: FontWeight.w600,
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.012,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Color.fromRGBO(128, 128, 188, 1),
                            size: 21,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Icon(
                              Icons.circle,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
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
                            height: MediaQuery.of(context).size.height * 0.17,
                            width: MediaQuery.of(context).size.width * 0.8,
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 15),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
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
                            height: MediaQuery.of(context).size.height * 0.17,
                            width: MediaQuery.of(context).size.width * 0.8,
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 15, right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: const [
                                    Image(
                                      height: 16,
                                      image: AssetImage(
                                        "assets/hdfc.png",
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Debit Card",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "**** **** 9889",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Expired",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromRGBO(237, 35, 42, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "John Doe",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 36,
                                      width: MediaQuery.of(context).size.width *
                                          0.23,
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          side: BorderSide(
                                              width: 2, color: Colors.white),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8))),
                                        ),
                                        onPressed: () {
                                          //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PropertyThree()));
                                        },
                                        child: const Text("CVV",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500)),
                                      ),
                                    ),
                                    Spacer(),
                                    SizedBox(
                                      height: 36,
                                      width: MediaQuery.of(context).size.width *
                                          0.45,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8))),
                                          primary: Colors.white,
                                          onSurface: Colors.white,
                                        ),
                                        onPressed: () {
                                          //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PropertyThree()));
                                        },
                                        child: const Text("Pay ₹2650 ",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 32, 9, 99),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500)),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.012,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Color.fromRGBO(128, 128, 188, 1),
                            size: 21,
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.all(3.0),
                          //   child: Icon(
                          //     Icons.circle,
                          //     color: Colors.white,
                          //     size: 15,
                          //   ),
                          // ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
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
                            height: MediaQuery.of(context).size.height * 0.079,
                            width: MediaQuery.of(context).size.width * 0.8,
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 15),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
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
                            height: MediaQuery.of(context).size.height * 0.079,
                            width: MediaQuery.of(context).size.width * 0.8,
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 15, right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "₹",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color:
                                                Color.fromRGBO(61, 92, 255, 1),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    // Image(
                                    //   height: 16,
                                    //   image: AssetImage(
                                    //     "assets/hdfc.png",
                                    //   ),
                                    // ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Text(
                                      "username011-1@okhdfcbank",
                                      style: TextStyle(
                                        fontSize: 12,
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.012,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Color.fromRGBO(128, 128, 188, 1),
                            size: 21,
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.all(3.0),
                          //   child: Icon(
                          //     Icons.circle,
                          //     color: Colors.white,
                          //     size: 15,
                          //   ),
                          // ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
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
                            height: MediaQuery.of(context).size.height * 0.079,
                            width: MediaQuery.of(context).size.width * 0.8,
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 15),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
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
                            height: MediaQuery.of(context).size.height * 0.079,
                            width: MediaQuery.of(context).size.width * 0.8,
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 15, right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "₹",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color:
                                                Color.fromRGBO(61, 92, 255, 1),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    // Image(
                                    //   height: 16,
                                    //   image: AssetImage(
                                    //     "assets/hdfc.png",
                                    //   ),
                                    // ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Text(
                                      "Pay with cash on Delivery",
                                      style: TextStyle(
                                        fontSize: 12,
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.037,
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
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => LogIn()));
                      },
                      child: Text("Pay Now",
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 113, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.018,
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
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text("Add Payment Method",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
