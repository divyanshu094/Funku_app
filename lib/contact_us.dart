import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:funku/dashboard.dart';
import 'package:funku/sign_up.dart';
import 'package:funku/verify_login.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({ Key? key }) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(), 
    );
  }
}
class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final items = ['Item 1','Item 2','Item 3','Item 4'];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: const BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('assets/bg.png'), fit: BoxFit.cover
          )
      ),
      
            child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp()));
          },icon: const Icon(Icons.arrow_back_ios_outlined)),
          elevation: 0,
        ),
        body: 
              Padding(padding: const EdgeInsets.only(left: 28,right: 28,top: 10),
              child:Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Contact us", style: GoogleFonts.merriweather(
                         fontSize: 26,
                         fontWeight: FontWeight.normal,
                         color: Colors.white
                        )
                      )
                    ], 
                  ),
                  SizedBox(
                    height:  MediaQuery.of(context).size.height*0.04,
                  ),
                  Container(
              height: MediaQuery.of(context).size.height*0.09,
              width: MediaQuery.of(context).size.width*0.9,
              child:
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.account_circle_rounded,size: MediaQuery.of(context).size.height*0.071,color: Colors.white70,),
                          Container(
                            padding: const EdgeInsets.only(left: 5),
                            width: MediaQuery.of(context).size.width*0.6,
                            child:
                            Column(
                              children: [
                                  Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Text("Contact",style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                    ),),
                                  ],
                                ),
                                // ignore: prefer_const_constructors
                                SizedBox(
                                  height:2,
                                ),
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Text("+91 0124 123 4567",style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          
                          ),
                          
                        ],
                      ),
                      
                    ],
                  ),
                ],
              ),  
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.09,
              width: MediaQuery.of(context).size.width*0.9,
              child:
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.account_circle_rounded,size: MediaQuery.of(context).size.height*0.071,color: Colors.white70,),
                          Container(
                            padding: const EdgeInsets.only(left: 5),
                             width: MediaQuery.of(context).size.width*0.6,
                            child:
                            Column(
                              children: [
                                  Row(
                                  children: [
                                    const Text("Mail",style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                    ),),
                                  ],
                                ),
                                const SizedBox(
                                  height:2,
                                ),
                                Row(
                                  children: [
                                    const Text("user@funku.com",style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          
                          ),
                          
                        ],
                      ),
                      
                    ],
                  ),
                ],
              ),  
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.12,
              width: MediaQuery.of(context).size.width*0.9,
              
              child:
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.account_circle_rounded,size: MediaQuery.of(context).size.height*0.071,color: Colors.white70,),
                          Container(
                            padding: const EdgeInsets.only(left: 5),
                             width: MediaQuery.of(context).size.width*0.6,
                            child:
                            Column(
                              children: [
                                  Row(
                                  children: [
                                    const Text("user@funku.com",style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                    ),),
                                  ],
                                ),
                                const SizedBox(
                                  height:2,
                                ),
                                Row(
                                  children: [
                                    const Text("Address Line 1",style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),),
                                  ],
                                ),
                                 Row(
                                  children: [
                                    const Text("City",style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),),
                                  ],
                                ),
                                 Row(
                                  children: [
                                    const Text("Country",style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          
                          ),
                          
                        ],
                      ),
                      
                    ],
                  ),
                ],
              ),  
            ),
            Divider(
              color: Colors.white,
              thickness: 2,
              height: 17,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const Text("For any feedback, write to us",style: TextStyle(
                   fontSize: 16,
                   color: Colors.white,
                   fontWeight: FontWeight.w500
                    ),
                  ),
              ],
            ),
            SizedBox(
                          height: MediaQuery.of(context).size.width*0.075,
                        ),
                        DropdownButtonFormField( 
                          isExpanded: true,
                          decoration: InputDecoration( 
                            labelText: "Subject*",
                            labelStyle: TextStyle(color: Colors.white70,fontSize: 14),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                           ),
                            dropdownColor: Color.fromARGB(255, 32, 9, 99),
                            style: TextStyle(
                              fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400
                            ),

                            value: value,
                            items: items.map(buildMenuItem).toList(),
                                onChanged: (value) => setState(() =>this.value = value as String?),),
            // DropdownButton<String>(
            //   isExpanded: true,
              
            //   dropdownColor: Colors.transparent,
            //   style: TextStyle(
            //     fontSize: 14,
            //        color: Colors.white,
            //        fontWeight: FontWeight.w400
            //   ),

            //   value: value,
            //   items: items.map(buildMenuItem).toList(),
            //        onChanged: (value) => setState(() =>this.value = value),
            //        ),
            SizedBox(
                          height: MediaQuery.of(context).size.width*0.04,
                        ),
            const TextField(
                        style: TextStyle( color: Colors.white, fontWeight: FontWeight.w500,fontSize: 14 ),
                        
                        textAlign: TextAlign.left,
                        
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          labelText: "Type your message here*",
                          labelStyle: TextStyle(color: Colors.white70),
                          // ignore: prefer_const_constructors
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        ) ,
                        
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width*0.35,
                        ),
                          SizedBox(
                            height: 48,
                            child: ElevatedButton(
                        style: 
                        ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(60),
                          // side: BorderSide(width: 2,),
                          shape: StadiumBorder(),
                          primary: Colors.white,
                          onSurface: Colors.white,
                        
                        ),
                        onPressed:() {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => VerifyLogin()));
                              } ,
                              child: Text("Send",style: TextStyle(
                  color: Color.fromARGB(255, 32, 9, 99),
                  fontSize: 20,
                  fontWeight: FontWeight.bold )),
                  ),
                          ),
                ],
              )
            
        ),
            ),
    );
    
  }
  DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
        ),
      );
}