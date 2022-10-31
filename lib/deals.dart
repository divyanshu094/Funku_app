import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'events.dart';

class DealsPage extends StatefulWidget {
  const DealsPage({Key? key}) : super(key: key);

  @override
  State<DealsPage> createState() => _DealsPageState();
}

class _DealsPageState extends State<DealsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: deal(),
    );
  }
}

class deal extends StatefulWidget {
  const deal({Key? key}) : super(key: key);

  @override
  State<deal> createState() => _BodyState();
}

class _BodyState extends State<deal> {
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
                    .push(MaterialPageRoute(builder: (context) => EventPage()));
              },
              icon: Icon(Icons.arrow_back_ios_outlined)),
          title: Center(
            child: Text("Deals",
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
                const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 20),
            child: SingleChildScrollView(
              child: Column(
                children: dealItems
                    .map(
                      (element) => Container(
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            gradient: LinearGradient(
                                colors: [Colors.white30, Colors.white10])),
                        margin: EdgeInsets.only(bottom: 20),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(element['image']),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(17),
                                    topRight: Radius.circular(17)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 8, top: 8, bottom: 8),
                              child: Row(
                                children: [
                                  Text(
                                    element['name'],
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    height: 28,
                                    width: 90,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        // minimumSize: Size.fromHeight(60),
                                        // side: BorderSide(width: 2,),
                                        shape: StadiumBorder(),
                                        primary: Colors.white,
                                        onSurface: Colors.white,
                                      ),
                                      onPressed: () {
                                        //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PropertyThree()));
                                      },
                                      child: Text("Book deal",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 32, 9, 99),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8,
                                right: 8,
                              ),
                              child: SvgPicture.asset(
                                "assets/path5.svg",
                                color: Colors.white,
                                height: 3,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, bottom: 7, top: 7),
                              child: Row(
                                children: [
                                  Text(
                                    element['details'],
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    element['price'],
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            )),
      ),
    );
  }
}

List<Map> dealItems = [
  {
    "image": "assets/deal1.png",
    'name': 'Whiskey Samba',
    'details': '4 IMFL (30ml) + 1 veg/ Non veg starter/ 1 Pizza',
    'price': '₹1000 onwards',
  },
  {
    "image": "assets/deal1.png",
    'name': 'Prankster',
    'details': '4 IMFL (30ml) + 1 veg/ Non veg starter/ 1 Pizza',
    'price': '₹1500 onwards',
  },
  {
    "image": "assets/deal1.png",
    'name': 'Whiskey Samba',
    'details': '4 IMFL (30ml) + 1 veg/ Non veg starter/ 1 Pizza',
    'price': '₹1000 onwards',
  },
  {
    "image": "assets/deal1.png",
    'name': 'Prankster',
    'details': '4 IMFL (30ml) + 1 veg/ Non veg starter/ 1 Pizza',
    'price': '₹1500 onwards',
  }
];
