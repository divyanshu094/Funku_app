import 'dart:js';

import 'package:flutter/material.dart';
import 'package:funku/persionaldetails.dart';
import 'package:funku/preference_drink.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:funku/components/components/variables.dart';
import 'dashboard.dart';

bool _click1 = true;
 Color _containerColortop1 = Colors.white30;
 Color _containerColorbottom1 = Colors.white10;
 Color _textColor1 = Colors.white30;

 bool _click2 = true;
 Color _containerColortop2 = Colors.white30;
 Color _containerColorbottom2 = Colors.white10;
 Color _textColor2 = Colors.white30;

 bool _click3 = true;
 Color _containerColortop3 = Colors.white30;
 Color _containerColorbottom3 = Colors.white10;
 Color _textColor3 = Colors.white30;

 bool _click4 = true;
 Color _containerColortop4 = Colors.white30;
 Color _containerColorbottom4 = Colors.white10;
 Color _textColor4 = Colors.white30;

 bool _click5 = true;
 Color _containerColortop5 = Colors.white30;
 Color _containerColorbottom5 = Colors.white10;
 Color _textColor5 = Colors.white30;

 bool _click6 = true;
 Color _containerColortop6 = Colors.white30;
 Color _containerColorbottom6 = Colors.white10;
 Color _textColor6 = Colors.white30;

 bool _click7 = true;
 Color _containerColortop7 = Colors.white30;
 Color _containerColorbottom7 = Colors.white10;
 Color _textColor7 = Colors.white30;

 bool _click8 = true;
 Color _containerColortop8 = Colors.white30;
 Color _containerColorbottom8 = Colors.white10;
 Color _textColor8 = Colors.white30;

 bool _click9 = true;
 Color _containerColortop9 = Colors.white30;
 Color _containerColorbottom9 = Colors.white10;
 Color _textColor9 = Colors.white30;

 bool _click10 = true;
 Color _containerColortop10 = Colors.white30;
 Color _containerColorbottom10 = Colors.white10;
 Color _textColor10 = Colors.white30;

 bool _click11 = true;
 Color _containerColortop11 = Colors.white30;
 Color _containerColorbottom11 = Colors.white10;
 Color _textColor11 = Colors.white30;

 bool _click12 = true;
 Color _containerColortop12 = Colors.white30;
 Color _containerColorbottom12 = Colors.white10;
 Color _textColor12 = Colors.white30;

class MusicGenre extends StatefulWidget {
  const MusicGenre({ Key? key }) : super(key: key);

  @override
  State<MusicGenre> createState() => _MusicGenreState();
}

class _MusicGenreState extends State<MusicGenre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Music(),
    );
  }
}
class Music extends StatefulWidget {
   Music({ Key? key }) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  
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
                padding: EdgeInsets.only(left: 25,right: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("What genre of music you prefer?", style: GoogleFonts.merriweather(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
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
                            height: 24,
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
                                              child: Icon(Icons.menu_outlined,color: _textColor1,),
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
                                                      'Bollywood',
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

                                            _containerColortop1 = Colors.white;
                                            _containerColorbottom1 = Colors.white;
                                            _textColor1 = Color.fromARGB(255, 32, 9, 99);
                                            _click1  = false;
                                          }) :
                                          setState(() {
                                            _textColor1 = Colors.white30;            
                                            _containerColortop1 = Colors.white30;
                                            _containerColorbottom1 = Colors.white10;
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
                                              child: Icon(Icons.menu_outlined,color: _textColor2,),
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
                                                      'Bollywood',
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

                                            _containerColortop2 = Colors.white;
                                            _containerColorbottom2 = Colors.white;
                                            _textColor2 = Color.fromARGB(255, 32, 9, 99);
                                            _click2  = false;
                                          }) :
                                          setState(() {
                                            _textColor2 = Colors.white30;            
                                            _containerColortop2 = Colors.white30;
                                            _containerColorbottom2 = Colors.white10;
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
                                              child: Icon(Icons.menu_outlined,color: _textColor3,),
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
                                                      'Bollywood',
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

                                            _containerColortop3 = Colors.white;
                                            _containerColorbottom3 = Colors.white;
                                            _textColor3 = Color.fromARGB(255, 32, 9, 99);
                                            _click3  = false;
                                          }) :
                                          setState(() {
                                            _textColor3 = Colors.white30;            
                                            _containerColortop3 = Colors.white30;
                                            _containerColorbottom3 = Colors.white10;
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
                                              child: Icon(Icons.menu_outlined,color: _textColor4,),
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
                                                      'Bollywood',
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

                                            _containerColortop4 = Colors.white;
                                            _containerColorbottom4 = Colors.white;
                                            _textColor4 = Color.fromARGB(255, 32, 9, 99);
                                            _click4  = false;
                                          }) :
                                          setState(() {
                                            _textColor4 = Colors.white30;            
                                            _containerColortop4 = Colors.white30;
                                            _containerColorbottom4 = Colors.white10;
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
                                              child: Icon(Icons.menu_outlined,color: _textColor5,),
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
                                                      'Bollywood',
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

                                            _containerColortop5 = Colors.white;
                                            _containerColorbottom5 = Colors.white;
                                            _textColor5 = Color.fromARGB(255, 32, 9, 99);
                                            _click5  = false;
                                          }) :
                                          setState(() {
                                            _textColor5 = Colors.white30;            
                                            _containerColortop5 = Colors.white30;
                                            _containerColorbottom5 = Colors.white10;
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
                                              child: Icon(Icons.menu_outlined,color: _textColor6,),
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
                                                      'Bollywood',
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

                                            _containerColortop6 = Colors.white;
                                            _containerColorbottom6 = Colors.white;
                                            _textColor6 = Color.fromARGB(255, 32, 9, 99);
                                            _click6  = false;
                                          }) :
                                          setState(() {
                                            _textColor6 = Colors.white30;            
                                            _containerColortop6 = Colors.white30;
                                            _containerColorbottom6 = Colors.white10;
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
                                              child: Icon(Icons.menu_outlined,color: _textColor7),
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
                                                      'Bollywood',
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

                                            _containerColortop7 = Colors.white;
                                            _containerColorbottom7 = Colors.white;
                                            _textColor7 = Color.fromARGB(255, 32, 9, 99);
                                            _click7  = false;
                                          }) :
                                          setState(() {
                                            _textColor7 = Colors.white30;            
                                            _containerColortop7 = Colors.white30;
                                            _containerColorbottom7 = Colors.white10;
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
                                              child: Icon(Icons.menu_outlined,color: _textColor8,),
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
                                                      'Bollywood',
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

                                            _containerColortop8 = Colors.white;
                                            _containerColorbottom8 = Colors.white;
                                            _textColor8 = Color.fromARGB(255, 32, 9, 99);
                                            _click8  = false;
                                          }) :
                                          setState(() {
                                            _textColor8 = Colors.white30;            
                                            _containerColortop8 = Colors.white30;
                                            _containerColorbottom8 = Colors.white10;
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
                                              child: Icon(Icons.menu_outlined,color: _textColor9,),
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
                                                      'Bollywood',
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

                                            _containerColortop9 = Colors.white;
                                            _containerColorbottom9 = Colors.white;
                                            _textColor9 = Color.fromARGB(255, 32, 9, 99);
                                            _click9  = false;
                                          }) :
                                          setState(() {
                                            _textColor9 = Colors.white30;            
                                            _containerColortop9 = Colors.white30;
                                            _containerColorbottom9 = Colors.white10;
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
                                              child: Icon(Icons.menu_outlined,color: _textColor10,),
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
                                                      'Bollywood',
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

                                            _containerColortop10 = Colors.white;
                                            _containerColorbottom10= Colors.white;
                                            _textColor10 = Color.fromARGB(255, 32, 9, 99);
                                            _click10  = false;
                                          }) :
                                          setState(() {
                                            _textColor10 = Colors.white30;            
                                            _containerColortop10 = Colors.white30;
                                            _containerColorbottom10 = Colors.white10;
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
                                              child: Icon(Icons.menu_outlined,color: _textColor11,),
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
                                                      'Bollywood',
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

                                            _containerColortop11 = Colors.white;
                                            _containerColorbottom11 = Colors.white;
                                            _textColor11 = Color.fromARGB(255, 32, 9, 99);
                                            _click11  = false;
                                          }) :
                                          setState(() {
                                            _textColor11 = Colors.white30;            
                                            _containerColortop11 = Colors.white30;
                                            _containerColorbottom11 = Colors.white10;
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
                                              child: Icon(Icons.menu_outlined,color: _textColor12,),
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
                                                      'Bollywood',
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

                                            _containerColortop12 = Colors.white;
                                            _containerColorbottom12 = Colors.white;
                                            _textColor12 = Color.fromARGB(255, 32, 9, 99);
                                            _click12  = false;
                                          }) :
                                          setState(() {
                                            _textColor12 = Colors.white30;            
                                            _containerColortop12= Colors.white30;
                                            _containerColorbottom12 = Colors.white10;
                                            _click12  = true;
                                          }); 
                                        },
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
                            minimumSize: Size(MediaQuery.of(context).size.width*0.885, 48),
                            side: BorderSide(width: 2,color: Colors.white),
                            shape: StadiumBorder(),
                            primary: Colors.white,
                          ),
                          onPressed: (){
                             Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp()));
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

// Widget check(){
  
//     if (_isclicked) {
      
//       return InkWell(
//       child: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//              begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [Colors.white30, Colors.white10],
//           ),
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//         ),
//         height: 125,
//         width: 99,
//         child: Column(
//           children: [
//             Container(
//               child: Icon(Icons.menu_outlined,color: Colors.grey,),
//               height: 93,
//             ),
//             Container(
//               height: 32,
//               width: 99,
//               decoration: BoxDecoration(
//                 color: Colors.white.withOpacity(0.3),
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(10),
//                   bottomRight: Radius.circular(10),
//                   ),
//                 ),
//               child: Center(
//                 child: Text(
//                       'Bollywood',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 10,
//                           fontWeight: FontWeight.w400),
//                     ),
//               ),
              
//             )
//           ],
//         ),
//       ),
      
//       onTap: () { 
//         print("tapped");
//         _isclicked =!_isclicked;
//         print(_isclicked);
//       }
//     );
//     } else {
//       return genureSelected();
//     }
  
// }

//   Widget genureSelected(){
//     return InkWell(
//       child: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//              begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [Colors.white, Colors.white],
//           ),
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//         ),
//         height: 125,
//         width: 99,
//         child: Column(
//           children: [
//             Container(
//               child: Icon(Icons.menu_outlined,color: Color.fromARGB(255, 32, 9, 99),),
//               height: 93,
//             ),
//             Container(
//               height: 32,
//               width: 99,
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 32, 9, 99),
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(10),
//                   bottomRight: Radius.circular(10),
//                   ),
//                 ),
//               child: Center(
//                 child: Text(
//                       'Bollywood',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 10,
//                           fontWeight: FontWeight.w400),
//                     ),
//               ),
              
//             )
//           ],
//         ),
//       ),
      
//       onTap: () { 
//       print('tapped');
//       _isclicked =!_isclicked;
//       print(_isclicked);
//       }
//     );
  // }