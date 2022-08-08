import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:funku/dashboard.dart';
import 'package:funku/persionaldetails.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:row_date_picker/row_date_picker.dart';


String imagePath ="assets/shape (2).svg";
 bool _male = true;
 Color _maleColor = Colors.white;

 bool _female = false;
 Color _femaleColor = Colors.white30;

 bool _other = false;
 Color _otherColor = Colors.white30;

class PdBirthday extends StatefulWidget {
  const PdBirthday({ Key? key }) : super(key: key);

  @override
  State<PdBirthday> createState() => _PdBirthdayState();
}

class _PdBirthdayState extends State<PdBirthday> {
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: SelectBirthday(),
      ),
    );
  }
}
  class SelectBirthday extends StatefulWidget {
    const SelectBirthday({ Key? key }) : super(key: key);
  
    @override
    State<SelectBirthday> createState() => _SelectBirthdayState();
  }
  
  class _SelectBirthdayState extends State<SelectBirthday> {
    @override
    Widget build(BuildContext context) {
      return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.png'), fit: BoxFit.cover
          )
        ),
        child:
        Scaffold(
           backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => PersonalDelails()));
          },
          icon: const Icon(Icons.arrow_back_ios_outlined)),
          elevation: 0,
        ),
          body:SingleChildScrollView(
            child: Padding(padding: EdgeInsets.only(top: 10,left: 10,right: 10),
            child: Column(
              children: [
                Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("What is your sex?", style: GoogleFonts.merriweather(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                      ),
                    )
                  ],
                ),
                SizedBox(
                   height: MediaQuery.of(context).size.height*0.02,
                ),
                IntrinsicHeight(
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/shape.svg",
                              height: 130,
                              width: 80,
                              color: _femaleColor,
                            ),
                            Text('Female',style: TextStyle( color: _femaleColor, fontWeight: FontWeight.w500,fontSize: 14 ),)
                          ],
                        ),
                        onTap: () {
                          _female ?
                           setState(() {    
                            _femaleColor = Colors.white38;   
                            _female = false;
                            }) :
                            setState(() {
                            _femaleColor = Colors.white;   
                            _female = true;
                            _male=false;  
                             _otherColor = Colors.white38;  
                             _maleColor = Colors.white38;     
                            }); 
                        },
                      ),
                      VerticalDivider(
                        
                        thickness: 2,
                        color: Colors.white54,
                        indent: 20,
                        endIndent: 26,
                      ),
                      InkWell(
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/shape (1).svg",
                              height: 130,
                              width: 80,
                              color: _maleColor,
                            ),
                            Text('Male',style: TextStyle( color: _maleColor, fontWeight: FontWeight.w500,fontSize: 14 ),)
                          ],
                        ),
                        onTap: () {
                          _male ?
                           setState(() {    
                            _maleColor = Colors.white38;   
                            _male = false;
                            }) :
                            setState(() {
                            _maleColor = Colors.white;   
                            _male = true; 
                            _female =false;
                            _other =false; 
                             _otherColor = Colors.white38; 
                              _femaleColor = Colors.white38;      
                            }); 
                        },
                      ),
                        VerticalDivider(
                        
                        thickness: 2,
                        color: Colors.white54,
                        indent: 20,
                        endIndent: 26,
                      ),
                     InkWell(
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/shape (2).svg",
                              height: 130,
                              width: 80,
                              color: _otherColor,
                            ),
                            Text('Agender',style: TextStyle( color: _otherColor, fontWeight: FontWeight.w500,fontSize: 14 ),)
                          ],
                        ),
                        onTap: () {
                          _other ?
                           setState(() {    
                            _otherColor = Colors.white38;   
                            _other = false;
                            }) :
                            setState(() {
                            _otherColor = Colors.white;   
                            _other = true; 
                            _male = false;
                            _female = false;    
                             _femaleColor = Colors.white38;
                             _maleColor = Colors.white38;    
                            }); 
                        },
                      ),      
                    ],
                  ),
                ),
                SizedBox(
                      height: MediaQuery.of(context).size.height*0.09,
                    ),
                Text('When is your birthday?', style: GoogleFonts.merriweather(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.01,
                    ),
                Padding(
                padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                child: RowDatePicker(
                    type: DatePickerType.full,
                    backgroundColor: Colors.transparent,
                    frameColor: Colors.white,
                    height:160,
                    frameTextStyle: TextStyle(color: Colors.white,fontSize: 16),
                    onTap: (final value) {
                      setState(() {
                        var showText = value;
                        print(showText);
                      });
                    })),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.22,
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
          )
        )
      );
    }
  }
 