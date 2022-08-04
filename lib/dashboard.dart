import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:funku/contact_us.dart';
import 'package:funku/genre.dart';
import 'package:funku/notification.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:funku/a.dart';
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/bg.png'),
          fit: BoxFit.fill,
        )),
        child: SafeArea(
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                child: Row(
                  children:  <Widget>[
                    IconButton(onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationToday()));
                    }, icon:  Icon(
                      Icons.compass_calibration,
                      color: Colors.white,
                      
                    ),),
                   
                    Spacer(),
                    IconButton(onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContactUs()));
                    }, icon:  Icon(
                      Icons.compass_calibration,
                      color: Colors.white,
                      
                    ),),
                    SizedBox(
                      width: 15,
                    ),
                    IconButton(onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => MusicGenre()));
                    }, icon:  Icon(
                      Icons.compass_calibration,
                      color: Colors.white,
                      
                    ),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(25),
                child: Text(
                  'Find the best party for you',
                  style: GoogleFonts.merriweather(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                       color: Colors.white,
                       fontStyle: FontStyle.italic
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 80,
                  child: Row(
                    children: [
                      addStory(),
                      userStory(),
                      userStory(),
                      userStory(),
                      userStory(),
                    ],
                  ),
                ),
              ),
              // addStory(),
              // userStory(),
              // bodyContainer(),
              _renderContent(context),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
              child: Container(
                height: 120,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    eventDeal(),
                    SizedBox(
                      width: 5,
                    ),
                    eventDeal(),
                    SizedBox(
                      width: 5,
                    ),
                    eventDeal(),
                    SizedBox(
                      width: 5,
                    ),
                    eventDeal()
                  ],
                ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: const [
                    Text(
                      'Flash Card Deals',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    Text(
                      'See all',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                  height: 170,
                  padding: EdgeInsets.only(left: 20, right: 100),
                  child: flashCard()),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: const [
                    Text(
                      'Discover Placess',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    Text(
                      'See all',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 145,
                child: ListView.separated(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return discoverPlace();
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 12);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: const [
                    Text(
                      'Let’s Party!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    Text(
                      'See all',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                height: 240,
                child: ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return letsParty();
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 12);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: const [
                    Text(
                      'Discover Artists',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    Text(
                      'See all',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 145,
                child: ListView.separated(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return discoverArtist();
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 12);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget eventDeal() {
    return Container(
      height: 130,
      width: 130,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(255, 255, 255, 0.4),
              Color.fromRGBO(255, 255, 255, 0.1)
            ],
          )),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bg.png'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.red),
            ),
            const Text(
              "Event",
              style: TextStyle(fontSize: 15),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  "129",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                // Spacer(),
                InkWell(
                  onTap: () {
                    print("object");
                  },
                  child: const Icon(
                    Icons.arrow_forward_sharp,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget bodyContainer() {
    return Container(
        margin: const EdgeInsets.all(15),
        padding: EdgeInsets.only(left: 20),
        height: 180,
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            image: DecorationImage(
              image: AssetImage('assets/temp.png'),
              fit: BoxFit.fill,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text("Friday Night at SinQ ",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w700)),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Click to check details",
                  style: TextStyle(fontSize: 15, color: Colors.grey)),
            )
          ],
        ));
  }

  Widget addStory() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey,
              width: 3.0,
            ),
          ),
          child: const CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/temp.png'),
            radius: 40,
          ),
        ),
        Positioned(
          right: 4,
          bottom: 10,
          child: Container(
            width: 25,
            height: 25,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            child: InkWell(
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }

  Widget userStory() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.blue,
              width: 3.0,
            ),
          ),
          child: const CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: const AssetImage('assets/temp.png'),
            radius: 40,
          ),
        ),
      ],
    );
  }

  Widget flashCard() {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 20),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/temp.png'),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      height: 180,
      width: 235,
      child: Column(
          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'SinQ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
            const Text(
              'Sector 29, Gurgaon',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Row(
                  children: [
                    timer(),
                    const SizedBox(
                      width: 2,
                    ),
                    timer(),
                  ],
                ),
                const Text(":",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 24,
                        fontWeight: FontWeight.w700)),
                timer(),
                const SizedBox(
                  width: 2,
                ),
                timer(),
                const Text(":",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 24,
                        fontWeight: FontWeight.w700)),
                timer(),
                const SizedBox(
                  width: 2,
                ),
                timer(),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                  text: 'Up to 60% OFF',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                  children: [
                    TextSpan(
                      text: '& more.',
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => print('Tap Here onTap'),
                    )
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: const [
                Text(
                  'Buy now',
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.arrow_forward_sharp,
                  color: Colors.white,
                ),
              ],
            )
          ]),
    );
  }

  Widget timer() {
    return Container(
      height: 20,
      width: 20,
      padding: const EdgeInsets.only(top: 1),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.red],
          )),
      child: Column(
        children: [
          Text("11",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }

  Widget discoverPlace() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/temp.png'),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      height: 145,
      width: 145,
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Container(
          width: 145,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Prankster',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Lounge',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }

  Widget letsParty() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20, top: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/temp.png'),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          height: 150,
          width: 235,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                
                children: [
                  Text(
                    "SinQ",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Text(
                    "₹ 1,000",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Sector 29, Gurgaon",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "5th June, 7pm onwards",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        )
      ],
    );
  }
}
 Widget discoverArtist() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/temp.png'),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      height: 145,
      width: 145,
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Container(
          width: 145,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Guru Randhwa',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Bollywood & Punjabi',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }

 _renderContent(context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 20),
      color: Color(0x00000000),
      child: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        speed: 1000,
        onFlipDone: (status) {
          print(status);
        },
        front: Container(
        
        padding: EdgeInsets.only(left: 20),
        height: 180,
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            image: DecorationImage(
              image: AssetImage('assets/temp.png'),
              fit: BoxFit.fill,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text("Friday Night at SinQ ",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w700)),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Click to check details",
                  style: TextStyle(fontSize: 15, color: Colors.grey)),
            )
          ],
        )),
        back: Container(
          decoration: BoxDecoration(
            color: Color(0xFF006666),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Back', style: Theme.of(context).textTheme.headline1),
              Text('Click here to flip front',
                  style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ),
      ),
    );
  }