// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:funku/Create_a_party/property2.dart';
import 'package:funku/add_artist/artist1.dart';
import 'package:funku/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyAdd extends StatefulWidget {
  const PropertyAdd({ Key? key }) : super(key: key);

  @override
  State<PropertyAdd> createState() => _BaseModelState();
}

class _BaseModelState extends State<PropertyAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PropAd(),
    );
  }
}

class PropAd extends StatefulWidget {
  const PropAd({ Key? key }) : super(key: key);

  @override
  State<PropAd> createState() => _BodyState();
}

class _BodyState extends State<PropAd> {
  final itemscity = ['city 1','city 2','city 3','city 4'];
  String? valuecity;
  final itemsState = ['state 1','state 2','state 3','state 4'];
  String? valueState;
  final itemsTotal = ['10','20','30','40'];
  String? valueTotal;
  final itemsSeating = ['10','20','30','40'];
  String? valueSeating;
  
  bool boxvalue =false;
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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp()));
          },icon: Icon(Icons.arrow_back_ios_outlined)),
          elevation: 0,
        ),
        body: 
              Padding(padding: const EdgeInsets.only(left: 28, right: 28,bottom: 28),
              child:SingleChildScrollView(
                child: 
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("Add a Property", style: GoogleFonts.merriweather(
                           fontSize: 24,
                           fontWeight: FontWeight.w400,
                           color: Colors.white
                          )
                        )
                       ],     
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.02,
                      ),
                      Stack(
                    children: [
                      Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width*0.6,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 6),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                
                                  children: const [
                                    Icon(Icons.circle,color: Colors.white,),
                                    Icon(Icons.circle,color: Colors.white60,),
                                    Icon(Icons.circle,color: Colors.white60,),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text("Step 1", style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white
                                    )
                                  ),
                                  Text("Step 2", style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white
                                    )
                                  ),
                                  Text("Step 3", style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white
                                    )
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/line.svg",color: Colors.white,width: MediaQuery.of(context).size.width*0.53,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.02,
                  ),    
                      Icon(
                          Icons.add_circle_sharp,
                          size:120,
                          color: Colors.white54,
                        ),
                      
                      const TextButton(
                            onPressed: null, 
                            child: Text('Upload Profile Picture',style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline
                            ),)
                          ),
                          const TextField(
                              style: TextStyle( color: Colors.white, fontWeight: FontWeight.normal,fontSize: 14 ),
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                labelText: "Name of Place",
                                labelStyle: TextStyle(color: Colors.white70),
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                              ) ,
                            ),
                            SizedBox(
                               height: MediaQuery.of(context).size.height*0.02,
                            ),
                            const TextField(
                              style: TextStyle( color: Colors.white, fontWeight: FontWeight.normal,fontSize: 14 ),
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                labelText: "About Property",
                                labelStyle: TextStyle(color: Colors.white70),
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                              ) ,
                            ),
                            SizedBox(
                               height: MediaQuery.of(context).size.height*0.02,
                            ),
                            const TextField(
                              style: TextStyle( color: Colors.white, fontWeight: FontWeight.normal,fontSize: 14 ),
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.location_on,color: Colors.white54,),
                                labelText: "Enter Address",
                                labelStyle: TextStyle(color: Colors.white70),
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                              ) ,
                            ),SizedBox(
                               height: MediaQuery.of(context).size.height*0.02,
                            ),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Expanded(
                                  child: TextField(
                                    style: TextStyle( color: Colors.white, fontWeight: FontWeight.normal,fontSize: 14 ),
                                    textAlign: TextAlign.left,
                                    decoration: InputDecoration(
                                      labelText: "Enter Pincode",
                                      labelStyle: TextStyle(color: Colors.white70),
                                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                    
                                    ) ,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.04,
                                ),
                                Expanded(
                                  child: SizedBox(
                                    height: 50,
                                    child: DropdownButtonFormField( 
                                      isExpanded: true,
                                      decoration: InputDecoration( 
                                        labelText: "Select City",
                                        labelStyle: TextStyle(color: Colors.white70,fontSize: 14),
                                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                        ),
                                        dropdownColor: Color.fromARGB(255, 32, 9, 99),
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400
                                          ),
                                      value: valuecity,
                                      items: itemscity.map(buildMenuItem).toList(),
                                          onChanged: (value) => setState(
                                            () =>valuecity = value as String?
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                               height: MediaQuery.of(context).size.height*0.02,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: DropdownButtonFormField( 
                                    isExpanded: true,
                                    decoration: InputDecoration( 
                                      labelText: "Select State",
                                      labelStyle: TextStyle(color: Colors.white70,fontSize: 14),
                                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                      ),
                                      dropdownColor: Color.fromARGB(255, 32, 9, 99),
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400
                                        ),
                                    value: valueState,
                                    items: itemsState.map(buildMenuItem).toList(),
                                        onChanged: (value) => setState(
                                          () =>this.valueState = value as String?
                                        ),
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.04,
                                ),
                                Expanded(child: SizedBox())
                              ],
                            ),
                            SizedBox(
                               height: MediaQuery.of(context).size.height*0.02,
                            ),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Expanded(
                                  child: TextField(
                                    style: TextStyle( color: Colors.white, fontWeight: FontWeight.normal,fontSize: 14 ),
                                    textAlign: TextAlign.left,
                                    decoration: InputDecoration(
                                      labelText: "Opening Time",
                                      labelStyle: TextStyle(color: Colors.white70),
                                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                    
                                    ) ,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.04,
                                ),
                                Expanded(
                                  child: TextField(
                                    style: TextStyle( color: Colors.white, fontWeight: FontWeight.normal,fontSize: 14 ),
                                    textAlign: TextAlign.left,
                                    decoration: InputDecoration(
                                      labelText: "Closing Time",
                                      labelStyle: TextStyle(color: Colors.white70),
                                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                    ) ,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                               height: MediaQuery.of(context).size.height*0.04,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Payment Accepted", style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white
                                  )
                                )
                              ], 
                            ),
                            SizedBox(
                               height: MediaQuery.of(context).size.height*0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                  SizedBox(
                                    height: 20,
                                    width:  MediaQuery.of(context).size.width*0.1,
                                    child: Checkbox(
                                      value: boxvalue, onChanged: (newValue) {
                                        setState(() {
                                          boxvalue=newValue!;
                                        });
                                      },checkColor: Colors.black,activeColor: Colors.white,
                                      ),
                                  ),
                                  SizedBox(
                                    width:  MediaQuery.of(context).size.width*0.3,
                                    child: Text("Credit Card", style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                      )
                                    ),
                                  ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.05,
                                ),
                                SizedBox(
                                    height: 20,
                                    width:  MediaQuery.of(context).size.width*0.1,
                                    child: Checkbox(
                                      value: boxvalue, onChanged: (newValue) {
                                        setState(() {
                                          boxvalue=newValue!;
                                        });
                                      },checkColor: Colors.black,activeColor: Colors.white,
                                      ),
                                  ),
                                   SizedBox(
                                    child: Text("Debit Card", style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                      )
                                    ),
                                  ),
                              ],
                            ),
                            SizedBox(
                               height: MediaQuery.of(context).size.height*0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                  SizedBox(
                                    height: 20,
                                    width:  MediaQuery.of(context).size.width*0.1,
                                    child: Checkbox(
                                      value: boxvalue, onChanged: (newValue) {
                                        setState(() {
                                          boxvalue=newValue!;
                                        });
                                      },checkColor: Colors.black,activeColor: Colors.white,
                                      ),
                                  ),
                                  SizedBox(
                                    width:  MediaQuery.of(context).size.width*0.3,
                                    child: Text("UPI", style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                      )
                                    ),
                                  ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.05,
                                ),
                                SizedBox(
                                    height: 20,
                                    width:  MediaQuery.of(context).size.width*0.1,
                                    child: Checkbox(
                                      value: boxvalue, onChanged: (newValue) {
                                        setState(() {
                                          boxvalue=newValue!;
                                        });
                                      },checkColor: Colors.black,activeColor: Colors.white,
                                      ),
                                  ),
                                   SizedBox(
                                    child: Text("Cash", style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                      )
                                    ),
                                  ),
                              ],
                            ),
                            SizedBox(
                               height: MediaQuery.of(context).size.height*0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                  SizedBox(
                                    height: 20,
                                    width:  MediaQuery.of(context).size.width*0.1,
                                    child: Checkbox(
                                      value: boxvalue, onChanged: (newValue) {
                                        setState(() {
                                          boxvalue=newValue!;
                                        });
                                      },checkColor: Colors.black,activeColor: Colors.white,
                                      ),
                                  ),
                                  SizedBox(
                                    width:  MediaQuery.of(context).size.width*0.3,
                                    child: Text("Bank Transfer", style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                      )
                                    ),
                                  ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.05,
                                ),
                                SizedBox(
                                    height: 20,
                                    width:  MediaQuery.of(context).size.width*0.1,
                                    child: Checkbox(
                                      value: boxvalue, onChanged: (newValue) {
                                        setState(() {
                                          boxvalue=newValue!;
                                        });
                                      },checkColor: Colors.black,activeColor: Colors.white,
                                      ),
                                  ),
                                   SizedBox(
                                    child: Text("PayPal", style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                      )
                                    ),
                                  ),
                              ],
                            ),
                       SizedBox(
                               height: MediaQuery.of(context).size.height*0.02,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: DropdownButtonFormField( 
                                    isExpanded: true,
                                    decoration: InputDecoration( 
                                      labelText: "Total Capacity",
                                      labelStyle: TextStyle(color: Colors.white70,fontSize: 14),
                                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                      ),
                                      dropdownColor: Color.fromARGB(255, 32, 9, 99),
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400
                                        ),
                                    value: valueTotal,
                                    items: itemsTotal.map(buildMenuItem).toList(),
                                        onChanged: (value) => setState(
                                          () =>this.valueTotal = value as String?
                                        ),
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.04,
                                ),
                                Expanded(
                                  child: DropdownButtonFormField( 
                                    isExpanded: true,
                                    decoration: InputDecoration( 
                                      labelText: "Seating Capacity",
                                      labelStyle: TextStyle(color: Colors.white70,fontSize: 14),
                                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                      ),
                                      dropdownColor: Color.fromARGB(255, 32, 9, 99),
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400
                                        ),
                                    value: valueSeating,
                                    items: itemsSeating.map(buildMenuItem).toList(),
                                        onChanged: (value) => setState(
                                          () =>this.valueSeating = value as String?
                                        ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                               height: MediaQuery.of(context).size.height*0.02,
                            ),
                             const TextField(
                              style: TextStyle( color: Colors.white, fontWeight: FontWeight.normal,fontSize: 14 ),
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                labelText: "Enter Fee",
                                labelStyle: TextStyle(color: Colors.white70),
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                              ) ,
                            ),
                            SizedBox(
                               height: MediaQuery.of(context).size.height*0.05,
                            ),
                            Row(
                              children: [
                               Expanded(
                                    child: SizedBox(
                                      height: 48,
                                      child:
                                        OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            minimumSize: Size.fromHeight(60),
                                            side: BorderSide(width: 1,color: Colors.white),
                                            shape: StadiumBorder(),
                                          ),
                                          onPressed: () {
                                                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
                                              }, 
                                          child: Text("Cancel",style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)
                                          ),
                                        ),
                                    ),
                                  ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.04,
                                ),
                                 Expanded(
                                  child: SizedBox(
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
                                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => StepTwoprop()));
                                            },
                                            child: Text("Next",style: TextStyle(
                                        color: Color.fromARGB(255, 32, 9, 99),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500 )),
                                        ),
                                    ),
                                ),
                                  
                              ],
                            ),
                    ],
                  
                  ),
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