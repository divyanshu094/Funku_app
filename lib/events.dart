import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'deals.dart';
import 'payment/place_order.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _BaseModelState();
}

class _BaseModelState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Event(),
    );
  }
}

class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);

  @override
  State<Event> createState() => _BodyState();
}

class _BodyState extends State<Event> {
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
                    MaterialPageRoute(builder: (context) => PlaceOrder()));
              },
              icon: Icon(Icons.arrow_back_ios_outlined)),
          title: Center(
            child: Text("Events",
                style: GoogleFonts.merriweather(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.white)),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.dehaze_rounded,
                  color: Colors.white,
                ))
          ],
          elevation: 0,
        ),
        body: Padding(
            padding:
                const EdgeInsets.only(left: 28, right: 25, bottom: 8, top: 25),
            child: SingleChildScrollView(
              child: Column(
                children: eventItems
                    .map(
                      (element) => Card(
                        margin: EdgeInsets.only(bottom: 24),
                        elevation: 0.0,
                        color: Color(0x00000000),
                        child: FlipCard(
                          direction: FlipDirection.VERTICAL,
                          speed: 1000,
                          onFlipDone: (status) {
                            print(status);
                          },
                          front: Container(
                            padding: EdgeInsets.only(left: 12),
                            height: 180,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                image: DecorationImage(
                                  image: AssetImage(element['image']),
                                  fit: BoxFit.cover,
                                )),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(255, 32, 9, 99),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.white,
                                                size: 16,
                                              ),
                                              Text(element['rating'],
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(element['name'],
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 7, bottom: 6),
                                                child: Text(
                                                    "Click to check details",
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.white)),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: SizedBox(
                                                  height: 30,
                                                  width: 90,
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      shape: StadiumBorder(),
                                                      primary: Colors.white,
                                                      onSurface: Colors.white,
                                                    ),
                                                    onPressed: () {
                                                      //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PropertyThree()));
                                                    },
                                                    child: const Text("Book",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    32,
                                                                    9,
                                                                    99),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                                                  ),
                                                ),
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
                          //===================================CARD BACK===============================================================================
                          back: Container(
                            height: 180,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white12,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Text(
                                        element['name'],
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Column(
                                                    children: const [
                                                      Icon(
                                                        Icons
                                                            .access_time_outlined,
                                                        color: Colors.white70,
                                                        size: 20,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 7,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: const [
                                                          Text(
                                                            "Deal validity",
                                                            style: TextStyle(
                                                              fontSize: 7,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      184,
                                                                      184,
                                                                      210,
                                                                      1),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            element['dateTime'],
                                                            style: TextStyle(
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    children: const [
                                                      Icon(
                                                        Icons.explore_outlined,
                                                        color: Colors.white70,
                                                        size: 20,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 7,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: const [
                                                          Text(
                                                            "No. of people going",
                                                            style: TextStyle(
                                                              fontSize: 7,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      184,
                                                                      184,
                                                                      210,
                                                                      1),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            element['count'],
                                                            style: TextStyle(
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    children: const [
                                                      Icon(
                                                        Icons.explore,
                                                        color: Colors.white70,
                                                        size: 20,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 7,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: const [
                                                          Text(
                                                            "Offers",
                                                            style: TextStyle(
                                                              fontSize: 7,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      184,
                                                                      184,
                                                                      210,
                                                                      1),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            element['offers'],
                                                            style: TextStyle(
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Column(
                                                    children: const [
                                                      Icon(
                                                        Icons.location_on,
                                                        color: Colors.white70,
                                                        size: 20,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 7,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: const [
                                                          Text(
                                                            "Location",
                                                            style: TextStyle(
                                                              fontSize: 7,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      184,
                                                                      184,
                                                                      210,
                                                                      1),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            element['location'],
                                                            style: TextStyle(
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    children: const [
                                                      Icon(
                                                        Icons.people_rounded,
                                                        color: Colors.white70,
                                                        size: 20,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 7,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: const [
                                                          Text(
                                                            "Type of entry",
                                                            style: TextStyle(
                                                              fontSize: 7,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      184,
                                                                      184,
                                                                      210,
                                                                      1),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            element[
                                                                'entryType'],
                                                            style: TextStyle(
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    children: const [
                                                      Icon(
                                                        Icons
                                                            .currency_rupee_rounded,
                                                        color: Colors.white70,
                                                        size: 20,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 7,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: const [
                                                          Text(
                                                            "Price for deal",
                                                            style: TextStyle(
                                                              fontSize: 7,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      184,
                                                                      184,
                                                                      210,
                                                                      1),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            element['charges'],
                                                            style: TextStyle(
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
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
                                  Row(
                                    children: [
                                      Text(
                                        "*TnC Apply",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.bookmark_border_sharp,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      SizedBox(
                                        height: 30,
                                        width: 90,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: StadiumBorder(),
                                            primary: Colors.white,
                                            onSurface: Colors.white,
                                          ),
                                          onPressed: () {
                                            //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PropertyThree()));
                                          },
                                          child: const Text("Book",
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
                          ),
                        ),
                      ),
                    )
                    .toList(),
                //========================================================================================================================================
              ),
            )),
      ),
    );
  }
}

List<Map> eventItems = [
  {
    "image": "assets/temp2.png",
    'rating': '4.6',
    'name': 'Friday Night at SinQ ',
    'dateTime': '24-07-2022, 7pm-10pm',
    'count': '32',
    'offers': '20% Discount',
    'location': 'Sector -29, Gurgaon (Map)',
    'entryType': 'Stags',
    'charges': '₹ 1,000',
  },
  {
    "image": "assets/temp3.png",
    'rating': '4.6',
    'name': 'Friday Night at SinQ ',
    'dateTime': '24-07-2022, 7pm-10pm',
    'count': '32',
    'offers': '20% Discount',
    'location': 'Sector -29, Gurgaon (Map)',
    'entryType': 'Stags',
    'charges': '₹ 1,000',
  },
  {
    "image": "assets/temp4.png",
    'rating': '4.6',
    'name': 'Friday Night at SinQ ',
    'dateTime': '24-07-2022, 7pm-10pm',
    'count': '32',
    'offers': '20% Discount',
    'location': 'Sector -29, Gurgaon (Map)',
    'entryType': 'Stags',
    'charges': '₹ 1,000',
  },
  {
    "image": "assets/temp1.png",
    'rating': '4.6',
    'name': 'Friday Night at SinQ ',
    'dateTime': '24-07-2022, 7pm-10pm',
    'count': '32',
    'offers': '20% Discount',
    'location': 'Sector -29, Gurgaon (Map)',
    'entryType': 'Stags',
    'charges': '₹ 1,000',
  }
];
