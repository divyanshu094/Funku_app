// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:funku/preference/ambiance.dart';
import 'package:funku/preference_drink.dart';
import 'package:google_fonts/google_fonts.dart';

bool _click1 = false;
 Color _containerColortop1 = Colors.white30;
 Color _containerColorbottom1 = Colors.white10;
 Color _textColor1 = Colors.white30;

 bool _click2 = false;
 Color _containerColortop2 = Colors.white30;
 Color _containerColorbottom2 = Colors.white10;
 Color _textColor2 = Colors.white30;

 bool _click3 = false;
 Color _containerColortop3 = Colors.white30;
 Color _containerColorbottom3 = Colors.white10;
 Color _textColor3 = Colors.white30;

 bool _click4 = false;
 Color _containerColortop4 = Colors.white30;
 Color _containerColorbottom4 = Colors.white10;
 Color _textColor4 = Colors.white30;

 bool _click5 = false;
 Color _containerColortop5 = Colors.white30;
 Color _containerColorbottom5 = Colors.white10;
 Color _textColor5 = Colors.white30;

 bool _click6 = false;
 Color _containerColortop6 = Colors.white30;
 Color _containerColorbottom6 = Colors.white10;
 Color _textColor6 = Colors.white30;

 bool _click7 = false;
 Color _containerColortop7 = Colors.white30;
 Color _containerColorbottom7 = Colors.white10;
 Color _textColor7 = Colors.white30;

 bool _click8 = false;
 Color _containerColortop8 = Colors.white30;
 Color _containerColorbottom8 = Colors.white10;
 Color _textColor8 = Colors.white30;

 bool _click9 = false;
 Color _containerColortop9 = Colors.white30;
 Color _containerColorbottom9 = Colors.white10;
 Color _textColor9 = Colors.white30;

 bool _click10 = false;
 Color _containerColortop10 = Colors.white30;
 Color _containerColorbottom10 = Colors.white10;
 Color _textColor10 = Colors.white30;

 bool _click11 = false;
 Color _containerColortop11 = Colors.white30;
 Color _containerColorbottom11 = Colors.white10;
 Color _textColor11 = Colors.white30;

 bool _click12 = false;
 Color _containerColortop12 = Colors.white30;
 Color _containerColorbottom12 = Colors.white10;
 Color _textColor12 = Colors.white30;
 
 bool _click13 = false;
 Color _containerColortop13 = Colors.white30;
 Color _containerColorbottom13 = Colors.white10;
 Color _textColor13 = Colors.white30;
 
 bool _click14 = false;
 Color _containerColortop14 = Colors.white30;
 Color _containerColorbottom14 = Colors.white10;
 Color _textColor14 = Colors.white30;
 
 bool _click15 = false;
 Color _containerColortop15 = Colors.white30;
 Color _containerColorbottom15 = Colors.white10;
 Color _textColor15 = Colors.white30;
 
 bool _click16 = false;
 Color _containerColortop16 = Colors.white30;
 Color _containerColorbottom16 = Colors.white10;
 Color _textColor16 = Colors.white30;
 
 bool _click17 = false;
 Color _containerColortop17 = Colors.white30;
 Color _containerColorbottom17 = Colors.white10;
 Color _textColor17 = Colors.white30;
 
class DrinkGenre extends StatefulWidget {
  const DrinkGenre({ Key? key }) : super(key: key);

  @override
  State<DrinkGenre> createState() => _DrinkGenreState();
}

class _DrinkGenreState extends State<DrinkGenre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drink(),
    );
  }
}
class Drink extends StatefulWidget {
   Drink({ Key? key }) : super(key: key);

  @override
  State<Drink> createState() => _DrinkState();
}

class _DrinkState extends State<Drink> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.png'), fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PreferDrink()));
          },icon: Icon(Icons.arrow_back_ios_outlined)),
          elevation: 0,
        ),
        body: 
            
               Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.065,right: MediaQuery.of(context).size.width*0.065),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("What kind of Drink you prefer?", style: GoogleFonts.merriweather(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                        )
                      ), 
                      ],
                    ),
                    const SizedBox(
                            height: 8,
                          ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("You can select upto 3",style: TextStyle(
                             color: Colors.white,
                             fontSize: 12,
                             fontWeight: FontWeight.w300
                           ),)
                        ],
                       ),
                       const SizedBox(
                            height: 20,
                          ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.75,
                      child: SingleChildScrollView(
                        
                        child: Wrap(
                          
                          children: [
                            Column(
                              
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [_containerColortop1, _containerColorbottom1],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        height: 125,
                                        width: 99,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: SvgPicture.asset("assets/drink/group2.svg",color: _textColor1,),
                                              height: 93,
                                            ),
                                            Container(
                                              height: 32,
                                              width: 99,
                                              decoration: BoxDecoration(
                                                color: _textColor1,
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10),
                                                  ),
                                                ),
                                              child: const Center(
                                                child: Text(
                                                      'Imported beer',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                              ),
                                              
                                            )
                                          ],
                                        ),
                                      ),
      
                                      onTap: () {
                                          _click1  ?
                                          setState(() {
                                             _textColor1 = Colors.white30;            
                                            _containerColortop1 = Colors.white30;
                                            _containerColorbottom1 = Colors.white10;
                                            _click1  = false;
                                          }) :
                                          setState(() {
                                             _containerColortop1 = Colors.white;
                                            _containerColorbottom1 = Colors.white;
                                            _textColor1 = Color.fromARGB(255, 32, 9, 99);
                                            _click1  = true;
                                          }); 
                                        },
                                    ),
                                    InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [_containerColortop2, _containerColorbottom2],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        height: 125,
                                        width: 99,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: SvgPicture.asset("assets/drink/group3 (3).svg",color: _textColor2,),
                                              height: 93,
                                            ),
                                            Container(
                                              height: 32,
                                              width: 99,
                                              decoration: BoxDecoration(
                                                color: _textColor2,
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10),
                                                  ),
                                                ),
                                              child: const Center(
                                                child: Text(
                                                      'Draught beer',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                              ),
                                              
                                            )
                                          ],
                                        ),
                                      ),
      
                                      onTap: () {
                                          _click2  ?
                                          setState(() {
                                            _textColor2 = Colors.white30;            
                                            _containerColortop2 = Colors.white30;
                                            _containerColorbottom2 = Colors.white10;
                                            _click2  = false;
                                          }) :
                                          setState(() {
                                            _containerColortop2 = Colors.white;
                                            _containerColorbottom2 = Colors.white;
                                            _textColor2 = Color.fromARGB(255, 32, 9, 99);
                                            _click2  = true;
                                          }); 
                                        },
                                    ),
                                    InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [_containerColortop3, _containerColorbottom3],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        height: 125,
                                        width: 99,
                                        child: Column(
                                          children: [
                                            Container(
                                              child:SvgPicture.asset("assets/drink/group6.svg",color: _textColor3,),
                                              height: 93,
                                            ),
                                            Container(
                                              height: 32,
                                              width: 99,
                                              decoration: BoxDecoration(
                                                color: _textColor3,
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10),
                                                  ),
                                                ),
                                              child: const Center(
                                                child: Text(
                                                      'Indian beer',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                              ),
                                              
                                            )
                                          ],
                                        ),
                                      ),
      
                                      onTap: () {
                                          _click3  ?
                                          setState(() {
                                            _textColor3 = Colors.white30;            
                                            _containerColortop3 = Colors.white30;
                                            _containerColorbottom3 = Colors.white10;
                                            _click3  = false;
                                          }) :
                                          setState(() {
                                            _containerColortop3 = Colors.white;
                                            _containerColorbottom3 = Colors.white;
                                            _textColor3 = Color.fromARGB(255, 32, 9, 99);
                                            _click3  = true;
                                          }); 
                                        },
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row( 
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                   InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [_containerColortop4, _containerColorbottom4],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        height: 125,
                                        width: 99,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: SvgPicture.asset("assets/drink/group4.svg",color: _textColor4,),
                                              height: 93,
                                            ),
                                            Container(
                                              height: 32,
                                              width: 99,
                                              decoration: BoxDecoration(
                                                color: _textColor4,
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10),
                                                  ),
                                                ),
                                              child: const Center(
                                                child: Text(
                                                      'Brandy',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                              ),
                                              
                                            )
                                          ],
                                        ),
                                      ),
      
                                      onTap: () {
                                          _click4  ?
                                          setState(() {
                                            _textColor4 = Colors.white30;            
                                            _containerColortop4 = Colors.white30;
                                            _containerColorbottom4 = Colors.white10;
                                            _click4  = false;
                                          }) :
                                          setState(() {
                                            _containerColortop4 = Colors.white;
                                            _containerColorbottom4 = Colors.white;
                                            _textColor4 = Color.fromARGB(255, 32, 9, 99);
                                            _click4  = true;
                                          }); 
                                        },
                                    ),
                                   
                                    InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [_containerColortop5, _containerColorbottom5],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        height: 125,
                                        width: 99,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: SvgPicture.asset("assets/drink/group5.svg",color: _textColor5,),
                                              height: 93,
                                            ),
                                            Container(
                                              height: 32,
                                              width: 99,
                                              decoration: BoxDecoration(
                                                color: _textColor5,
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10),
                                                  ),
                                                ),
                                              child: const Center(
                                                child: Text(
                                                      'Cognac',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                              ),
                                              
                                            )
                                          ],
                                        ),
                                      ),
      
                                      onTap: () {
                                          _click5  ?
                                          setState(() {
                                            _textColor5 = Colors.white30;            
                                            _containerColortop5 = Colors.white30;
                                            _containerColorbottom5 = Colors.white10;
                                            _click5  = false;
                                          }) :
                                          setState(() {
                                            _containerColortop5 = Colors.white;
                                            _containerColorbottom5 = Colors.white;
                                            _textColor5 = Color.fromARGB(255, 32, 9, 99);
                                            _click5  = true;
                                          }); 
                                        },
                                    ),
                                    InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [_containerColortop6, _containerColorbottom6],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        height: 125,
                                        width: 99,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: SvgPicture.asset("assets/drink/group7.svg",color: _textColor6,),
                                              height: 93,
                                            ),
                                            Container(
                                              height: 32,
                                              width: 99,
                                              decoration: BoxDecoration(
                                                color: _textColor6,
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10),
                                                  ),
                                                ),
                                              child: const Center(
                                                child: Text(
                                                      'Champagne',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                              ),
                                              
                                            )
                                          ],
                                        ),
                                      ),
      
                                      onTap: () {
                                          _click6  ?
                                          setState(() {
                                            _textColor6 = Colors.white30;            
                                            _containerColortop6 = Colors.white30;
                                            _containerColorbottom6 = Colors.white10;
                                            _click6  = false;
                                          }) :
                                          setState(() {
                                            _containerColortop6 = Colors.white;
                                            _containerColorbottom6 = Colors.white;
                                            _textColor6 = Color.fromARGB(255, 32, 9, 99);
                                            _click6  = true;
                                          }); 
                                        },
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row( 
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                   InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [_containerColortop7, _containerColorbottom7],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        height: 125,
                                        width: 99,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: SvgPicture.asset("assets/drink/group8.svg",color: _textColor7,),
                                              height: 93,
                                            ),
                                            Container(
                                              height: 32,
                                              width: 99,
                                              decoration: BoxDecoration(
                                                color: _textColor7,
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10),
                                                  ),
                                                ),
                                              child: const Center(
                                                child: Text(
                                                      'Cocktails',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                              ),
                                              
                                            )
                                          ],
                                        ),
                                      ),
      
                                      onTap: () {
                                          _click7  ?
                                          setState(() {
                                            _textColor7 = Colors.white30;            
                                            _containerColortop7 = Colors.white30;
                                            _containerColorbottom7 = Colors.white10;
                                            _click7  = false;
                                          }) :
                                          setState(() {
                                            _containerColortop7 = Colors.white;
                                            _containerColorbottom7 = Colors.white;
                                            _textColor7 = Color.fromARGB(255, 32, 9, 99);
                                            _click7  = true;
                                          }); 
                                        },
                                    ),
                                   
                                    InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [_containerColortop8, _containerColorbottom8],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        height: 125,
                                        width: 99,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: SvgPicture.asset("assets/drink/group9.svg",color: _textColor8,),
                                              height: 93,
                                            ),
                                            Container(
                                              height: 32,
                                              width: 99,
                                              decoration: BoxDecoration(
                                                color: _textColor8,
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10),
                                                  ),
                                                ),
                                              child: const Center(
                                                child: Text(
                                                      'Gin',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                              ),
                                              
                                            )
                                          ],
                                        ),
                                      ),
      
                                      onTap: () {
                                          _click8  ?
                                          setState(() {
                                            _textColor8 = Colors.white30;            
                                            _containerColortop8 = Colors.white30;
                                            _containerColorbottom8 = Colors.white10;
                                            _click8  = false;
                                          }) :
                                          setState(() {
                                            _containerColortop8 = Colors.white;
                                            _containerColorbottom8 = Colors.white;
                                            _textColor8 = Color.fromARGB(255, 32, 9, 99);
                                            _click8  = true;
                                          }); 
                                        },
                                    ),
                                    InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [_containerColortop9, _containerColorbottom9],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        height: 125,
                                        width: 99,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: SvgPicture.asset("assets/drink/group10.svg",color: _textColor9,),
                                              height: 93,
                                            ),
                                            Container(
                                              height: 32,
                                              width: 99,
                                              decoration: BoxDecoration(
                                                color: _textColor9,
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10),
                                                  ),
                                                ),
                                              child: const Center(
                                                child: Text(
                                                      'Martini',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                              ),
                                              
                                            )
                                          ],
                                        ),
                                      ),
      
                                      onTap: () {
                                          _click9  ?
                                          setState(() {
                                            _textColor9 = Colors.white30;            
                                            _containerColortop9 = Colors.white30;
                                            _containerColorbottom9 = Colors.white10;
                                            _click9  = false;
                                          }) :
                                          setState(() {
                                            _containerColortop9 = Colors.white;
                                            _containerColorbottom9 = Colors.white;
                                            _textColor9 = Color.fromARGB(255, 32, 9, 99);
                                            _click9  = true;
                                          }); 
                                        },
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row( 
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                   InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [_containerColortop10, _containerColorbottom10],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        height: 125,
                                        width: 99,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: SvgPicture.asset("assets/drink/group11.svg",color: _textColor10,),
                                              height: 93,
                                            ),
                                            Container(
                                              height: 32,
                                              width: 99,
                                              decoration: BoxDecoration(
                                                color: _textColor10,
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10),
                                                  ),
                                                ),
                                              child: const Center(
                                                child: Text(
                                                      'Mocktails',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                              ),
                                              
                                            )
                                          ],
                                        ),
                                      ),
      
                                      onTap: () {
                                          _click10  ?
                                          setState(() {
                                            _textColor10 = Colors.white30;            
                                            _containerColortop10 = Colors.white30;
                                            _containerColorbottom10 = Colors.white10;
                                            _click10  = false;
                                          }) :
                                          setState(() {
                                            _containerColortop10 = Colors.white;
                                            _containerColorbottom10= Colors.white;
                                            _textColor10 = Color.fromARGB(255, 32, 9, 99);
                                            _click10  = true;
                                          }); 
                                        },
                                    ),
                                   
                                    InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [_containerColortop11, _containerColorbottom11],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        height: 125,
                                        width: 99,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: SvgPicture.asset("assets/drink/group12.svg",color: _textColor11,),
                                              height: 93,
                                            ),
                                            Container(
                                              height: 32,
                                              width: 99,
                                              decoration: BoxDecoration(
                                                color: _textColor11,
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10),
                                                  ),
                                                ),
                                              child: const Center(
                                                child: Text(
                                                      'Rum',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                              ),
                                              
                                            )
                                          ],
                                        ),
                                      ),
      
                                      onTap: () {
                                          _click11  ?
                                          setState(() {
                                            _textColor11 = Colors.white30;            
                                            _containerColortop11 = Colors.white30;
                                            _containerColorbottom11 = Colors.white10;
                                            _click11  = false;
                                          }) :
                                          setState(() {
                                            _containerColortop11 = Colors.white;
                                            _containerColorbottom11 = Colors.white;
                                            _textColor11 = Color.fromARGB(255, 32, 9, 99);
                                            _click11  = true;
                                          }); 
                                        },
                                    ),
                                    InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [_containerColortop12, _containerColorbottom12],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        height: 125,
                                        width: 99,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: SvgPicture.asset("assets/drink/group13.svg",color: _textColor12,),
                                              height: 93,
                                            ),
                                            Container(
                                              height: 32,
                                              width: 99,
                                              decoration: BoxDecoration(
                                                color: _textColor12,
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10),
                                                  ),
                                                ),
                                              child: const Center(
                                                child: Text(
                                                      'Tequila',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                              ),
                                              
                                            )
                                          ],
                                        ),
                                      ),
      
                                      onTap: () {
                                          _click12  ?
                                          setState(() {
                                            _textColor12 = Colors.white30;            
                                            _containerColortop12= Colors.white30;
                                            _containerColorbottom12 = Colors.white10;
                                            _click12  = false;
                                          }) :
                                          setState(() {
                                            _containerColortop12 = Colors.white;
                                            _containerColorbottom12 = Colors.white;
                                            _textColor12 = Color.fromARGB(255, 32, 9, 99);
                                            _click12  = true;
                                          }); 
                                        },
                                    ),
                                  ],
                                ),
                               
                                const SizedBox(
                                  height: 15,
                                ),
                                Row( 
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                   InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [_containerColortop13, _containerColorbottom13],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        height: 125,
                                        width: 99,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: SvgPicture.asset("assets/drink/group14.svg",color: _textColor13,),
                                              height: 93,
                                            ),
                                            Container(
                                              height: 32,
                                              width: 99,
                                              decoration: BoxDecoration(
                                                color: _textColor13,
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10),
                                                  ),
                                                ),
                                              child: const Center(
                                                child: Text(
                                                      'Vermouth',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                              ),
                                              
                                            )
                                          ],
                                        ),
                                      ),
      
                                      onTap: () {
                                          _click13  ?
                                          setState(() {
                                            _textColor13 = Colors.white30;            
                                            _containerColortop13 = Colors.white30;
                                            _containerColorbottom13 = Colors.white10;
                                            _click13  = false;
                                          }) :
                                          setState(() {
                                            _containerColortop13 = Colors.white;
                                            _containerColorbottom13 = Colors.white;
                                            _textColor13 = Color.fromARGB(255, 32, 9, 99);
                                            _click13  = true;
                                          }); 
                                        },
                                    ),
                                   
                                    InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [_containerColortop14, _containerColorbottom14],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        height: 125,
                                        width: 99,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: SvgPicture.asset("assets/drink/group15.svg",color: _textColor14,),
                                              height: 93,
                                            ),
                                            Container(
                                              height: 32,
                                              width: 99,
                                              decoration: BoxDecoration(
                                                color: _textColor14,
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10),
                                                  ),
                                                ),
                                              child: const Center(
                                                child: Text(
                                                      'Vodka',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                              ),
                                              
                                            )
                                          ],
                                        ),
                                      ),
      
                                      onTap: () {
                                          _click14  ?
                                          setState(() {
                                            _textColor14 = Colors.white30;            
                                            _containerColortop14 = Colors.white30;
                                            _containerColorbottom14 = Colors.white10;
                                            _click14  = false;
                                          }) :
                                          setState(() {
                                            _containerColortop14 = Colors.white;
                                            _containerColorbottom14 = Colors.white;
                                            _textColor14 = Color.fromARGB(255, 32, 9, 99);
                                            _click14  = true;
                                          }); 
                                        },
                                    ),
                                    InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [_containerColortop15, _containerColorbottom15],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        height: 125,
                                        width: 99,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: SvgPicture.asset("assets/drink/group16.svg",color: _textColor15,),
                                              height: 93,
                                            ),
                                            Container(
                                              height: 32,
                                              width: 99,
                                              decoration: BoxDecoration(
                                                color: _textColor15,
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10),
                                                  ),
                                                ),
                                              child: const Center(
                                                child: Text(
                                                      'Whiskey',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                              ),
                                              
                                            )
                                          ],
                                        ),
                                      ),
      
                                      onTap: () {
                                          _click15  ?
                                          setState(() {
                                            _textColor15 = Colors.white30;            
                                            _containerColortop15 = Colors.white30;
                                            _containerColorbottom15 = Colors.white10;
                                            _click15  = false;
                                          }) :
                                          setState(() {
                                            _containerColortop15 = Colors.white;
                                            _containerColorbottom15 = Colors.white;
                                            _textColor15 = Color.fromARGB(255, 32, 9, 99);
                                            _click15  = true;
                                          }); 
                                        },
                                    ),
                                  ],
                                ),
                                 const SizedBox(
                                  height: 15,
                                ),
                                Row( 
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                   InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [_containerColortop16, _containerColorbottom16],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        height: 125,
                                        width: 99,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: SvgPicture.asset("assets/drink/group17.svg",color: _textColor16,),
                                              height: 93,
                                            ),
                                            Container(
                                              height: 32,
                                              width: 99,
                                              decoration: BoxDecoration(
                                                color: _textColor16,
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10),
                                                  ),
                                                ),
                                              child: const Center(
                                                child: Text(
                                                      'Wine',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                              ),
                                              
                                            )
                                          ],
                                        ),
                                      ),
      
                                      onTap: () {
                                          _click16  ?
                                          setState(() {
                                            _textColor16 = Colors.white30;            
                                            _containerColortop16 = Colors.white30;
                                            _containerColorbottom16 = Colors.white10;
                                            _click16  = false;
                                          }) :
                                          setState(() {
                                            _containerColortop16 = Colors.white;
                                            _containerColorbottom16 = Colors.white;
                                            _textColor16 = Color.fromARGB(255, 32, 9, 99);
                                            _click16  = true;
                                          }); 
                                        },
                                    ),
                                   
                                    InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [_containerColortop17, _containerColorbottom17],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        height: 125,
                                        width: 99,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: SvgPicture.asset("assets/drink/group18.svg",color: _textColor17,),
                                              height: 93,
                                            ),
                                            Container(
                                              height: 32,
                                              width: 99,
                                              decoration: BoxDecoration(
                                                color: _textColor17,
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10),
                                                  ),
                                                ),
                                              child: const Center(
                                                child: Text(
                                                      'IMFL',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400),
                                                    ),
                                              ),
                                              
                                            )
                                          ],
                                        ),
                                      ),
      
                                      onTap: () {
                                          _click17  ?
                                          setState(() {
                                            _textColor17 = Colors.white30;            
                                            _containerColortop17 = Colors.white30;
                                            _containerColorbottom17 = Colors.white10;
                                            _click17  = false;
                                          }) :
                                          setState(() {
                                            _containerColortop17 = Colors.white;
                                            _containerColorbottom17 = Colors.white;
                                            _textColor17 = Color.fromARGB(255, 32, 9, 99);
                                            _click17  = true;
                                          }); 
                                        },
                                    ),
                                     Container(
                                        height: 125,
                                        width: 99,
                                        child: Column(
                                          
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                   
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(MediaQuery.of(context).size.width*0.875, 48),
                            side: BorderSide(width: 2,color: Colors.white),
                            shape: StadiumBorder(),
                            primary: Colors.white,
                          ),
                          onPressed: (){
                             Navigator.of(context).push(MaterialPageRoute(builder: (context) => AmbienceGenre()));
                          }, 
                          child: const Text('Next',style: TextStyle(
                color: Color.fromARGB(255, 32, 9, 99),
                fontWeight: FontWeight.w500)),
                        )
                      ],
                    )
                  ],
                ),
              
            ),
      ),
    );
  }
}

