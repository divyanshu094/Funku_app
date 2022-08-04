import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/logoo.dart';
String imagePath ="assets/combinedShape2.svg";

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
  
    // ignore: dead_code
    Widget buildDatePicker() => SizedBox(
      height: 180,
      
      child: Container(
        
        child: CupertinoDatePicker(
          
          maximumYear: DateTime.now().year,
          initialDateTime: dateTime,
          mode: CupertinoDatePickerMode.date,
          onDateTimeChanged: (dateTime) =>
          setState(() => this.dateTime = dateTime
            
          ),
          dateOrder: DatePickerDateOrder.dmy,
          
        ),
      ),
    ); 
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
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
          },
          icon: const Icon(Icons.arrow_back_ios_outlined)),
          elevation: 0,
        ),
          body:Padding(padding: EdgeInsets.only(left: 28,right: 28,top: 10),
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
                height: 38,
              ),
              IntrinsicHeight(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GenderIcon(
                            iconSrc: "assets/combinedShape2.svg",
                            press: () {},
                          ),
                    VerticalDivider(
                      
                      thickness: 1,
                      color: Colors.white70,
                      
                    ),
                    GenderIcon(
                            iconSrc: "assets/combinedShape2.svg",
                            press: () {},
                          ),
                          VerticalDivider(
                thickness: 1,
                color: Colors.white70,
              ),
                    GenderIcon(
                            iconSrc: "${imagePath}",
                            press: () {
                              setState(() {
                                imagePath = "assets/combinedShape3.svg";
                              });
                            },
                            
                          )      
                  ],
                ),
              ),
             
            ],
          ),
        
          )
        )
      );
    }
  }
 