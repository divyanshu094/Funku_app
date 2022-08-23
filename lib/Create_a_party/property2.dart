import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StepTwoprop extends StatefulWidget {
  const StepTwoprop({ Key? key }) : super(key: key);

  @override
  State<StepTwoprop> createState() => _BaseModelState();
}

class _BaseModelState extends State<StepTwoprop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Step(),
    );
  }
}

class Step extends StatefulWidget {
  const Step({ Key? key }) : super(key: key);

  @override
  State<Step> createState() => _BodyState();
}

class _BodyState extends State<Step> {
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
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
          },icon: Icon(Icons.arrow_back_ios_outlined)),
          elevation: 0,
        ),
        body: 
              Padding(padding: const EdgeInsets.only(left: 28, right: 28,bottom: 28),
              child:SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text("Exterior images of place", style: TextStyle(
                         fontSize: 14,
                         fontWeight: FontWeight.w400,
                         color: Colors.white
                        )
                      )
                     ], 
                     
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.007,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text("Upload from", style: TextStyle(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                         color: Colors.white
                        )
                      )
                     ], 
                     
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.007,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.add_box_rounded,
                                  size:50,
                                  color: Colors.white54,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Instagram", style: TextStyle(
                         fontSize: 12,
                         fontWeight: FontWeight.w300,
                         color: Colors.white
                        )
                      )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height*0.02,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.add_box_rounded,
                                  size:50,
                                  color: Colors.white54,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Facebook", style: TextStyle(
                         fontSize: 12,
                         fontWeight: FontWeight.w300,
                         color: Colors.white
                        )
                      )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height*0.02,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.add_box_rounded,
                                  size:50,
                                  color: Colors.white54,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Gallery", style: TextStyle(
                         fontSize: 12,
                         fontWeight: FontWeight.w300,
                         color: Colors.white
                        )
                      )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text("Interior images of place", style: TextStyle(
                         fontSize: 14,
                         fontWeight: FontWeight.w400,
                         color: Colors.white
                        )
                      )
                     ], 
                     
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.007,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text("Upload from", style: TextStyle(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                         color: Colors.white
                        )
                      )
                     ], 
                     
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.007,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.add_box_rounded,
                                  size:50,
                                  color: Colors.white54,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Instagram", style: TextStyle(
                         fontSize: 12,
                         fontWeight: FontWeight.w300,
                         color: Colors.white
                        )
                      )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height*0.02,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.add_box_rounded,
                                  size:50,
                                  color: Colors.white54,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Facebook", style: TextStyle(
                         fontSize: 12,
                         fontWeight: FontWeight.w300,
                         color: Colors.white
                        )
                      )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height*0.02,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.add_box_rounded,
                                  size:50,
                                  color: Colors.white54,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Gallery", style: TextStyle(
                         fontSize: 12,
                         fontWeight: FontWeight.w300,
                         color: Colors.white
                        )
                      )
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                    
                    
                  ],
                
                ),
              )
            
        ),
            ),
    );
  }
}