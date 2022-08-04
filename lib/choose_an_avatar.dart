import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:funku/persionaldetails.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class ChooseAvatar extends StatefulWidget {
  const ChooseAvatar({ Key? key }) : super(key: key);

  @override
  State<ChooseAvatar> createState() => _ChooseAvatarState();
}

class _ChooseAvatarState extends State<ChooseAvatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Choose(),
    );
  }
}

class Choose extends StatefulWidget {
  // const Choose({ Key? key }) : super(key: key);

  bool isSelected = true;
  
  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  Object _value=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.png'), fit: BoxFit.cover
          )
      ),
      child: Scaffold(
         backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PersonalDelails()));
          },icon: Icon(Icons.arrow_back_ios_outlined)),
          elevation: 0,
        ),
        body: Padding(padding: const EdgeInsets.only(left: 28,right: 28,top: 10),
        child: Column(
          children: [
            Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Text("Choose an avatar", style: GoogleFonts.merriweather(
                       fontSize: 26,
                       fontWeight: FontWeight.normal,
                       color: Colors.white
                       )
                     )
                  ], 
                ),
                SizedBox(
                          height: MediaQuery.of(context).size.height*0.07,
                        ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),color: Colors.white30),
              height: MediaQuery.of(context).size.height*0.14,
              width: MediaQuery.of(context).size.width*0.9,
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 15),
              child:
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.account_circle_rounded,size: MediaQuery.of(context).size.height*0.115,color: Colors.white70,),
                          Text("Party freak",style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                        width: 25,
                        child :Radio(value: 1, groupValue: _value, onChanged: (value) {
                          setState(() {
                               _value = value!;
                          });
                        },
                        activeColor: Colors.white60,
                        
                        )
            //           RoundCheckBox(
                      
            //           onTap: (selected) {
            //             setState(() {
            //               selected=false;
            //             });
            //           },
            //           checkedColor: Colors.white70,
            //           uncheckedColor: Colors.transparent,
            //           borderColor: Colors.white,
                      
            // ),
                      ),
                    ],
                  ),
                ],
              ),  
            ),
            SizedBox(
                      height: MediaQuery.of(context).size.height*0.03,
                    ),
             Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),color: Colors.white30),
              height: MediaQuery.of(context).size.height*0.14,
              width: MediaQuery.of(context).size.width*0.9,
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 15),
              child:
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.account_circle_rounded,size: MediaQuery.of(context).size.height*0.115,color: Colors.white70,),
                          Text("Drink guru",style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                        width: 25,
                        child :
                      Radio(value: 2, groupValue: _value, onChanged: (value) {
                          setState(() {
                               _value = value!;
                          });
                        },
                        activeColor: Colors.white60,
                        
                        
                        )
                      ),
                    ],
                  ),
                ],
              ),  
            ),
            SizedBox(
                      height: MediaQuery.of(context).size.height*0.03,
                    ),
              Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),color: Colors.white30),
              height: MediaQuery.of(context).size.height*0.14,
              width: MediaQuery.of(context).size.width*0.9,
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 15),
              child:
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.account_circle_rounded,size: MediaQuery.of(context).size.height*0.115,color: Colors.white70,),
                          Text("Music lover",style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                        width: 25,
                        child :
                      Radio(value: 3, groupValue: _value, onChanged: (value) {
                          setState(() {
                               _value = value!;
                          });
                        },
                         
                        activeColor: Colors.white60,
                       
                        )
                      ),
                    ],
                  ),
                ],
              ),  
            ),
            SizedBox(
                  height: MediaQuery.of(context).size.height*0.2,
                 ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(60),
                        side: BorderSide(width: 2,color: Colors.white),
                        shape: StadiumBorder(),
                        primary: Colors.white,
                      ),
                      onPressed: () {
                             Navigator.of(context).push(MaterialPageRoute(builder: (context) => PersonalDelails()));
                          }, child: Text("Choose yourself",style: TextStyle(
                color: Color.fromARGB(255, 32, 9, 99),
                fontSize: 20,
                fontWeight: FontWeight.bold )),
                ),
          ],
        ),
        ),
      ),
    );
  }
}