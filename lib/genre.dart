import 'dart:js';

import 'package:flutter/material.dart';
import 'package:funku/persionaldetails.dart';
import 'package:funku/preference_drink.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dashboard.dart';
 bool _isclicked = false;
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
                                    check(),
                                    check(),
                                    check(),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row( 
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    genure(),
                                    genure(),
                                    genure(),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    genure(),
                                    genure(),
                                    genure(),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    genure(),
                                    genure(),
                                    genure(),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    genure(),
                                    genure(),
                                    genure(),
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

Widget check(){
  
    if (_isclicked) {
      
      return genure();
    } else {
      return genureSelected();
    }
  
}

  Widget genure(){
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
             begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white30, Colors.white10],
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        height: 125,
        width: 99,
        child: Column(
          children: [
            Container(
              child: Icon(Icons.menu_outlined,color: Colors.grey,),
              height: 93,
            ),
            Container(
              height: 32,
              width: 99,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  ),
                ),
              child: Center(
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
        print("tapped");
        _isclicked =!_isclicked;
        print(_isclicked);
      }
    );
  }

  Widget genureSelected(){
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
             begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.white],
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        height: 125,
        width: 99,
        child: Column(
          children: [
            Container(
              child: Icon(Icons.menu_outlined,color: Color.fromARGB(255, 32, 9, 99),),
              height: 93,
            ),
            Container(
              height: 32,
              width: 99,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 32, 9, 99),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  ),
                ),
              child: Center(
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
      print('tapped');
      _isclicked =!_isclicked;
      print(_isclicked);
      }
    );
  }