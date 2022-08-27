import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:funku/Create_a_party/Property1.dart';
import 'package:funku/Create_a_party/property3.dart';
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
                                    Icon(Icons.check_circle_sharp,color: Colors.white,),
                                    Icon(Icons.circle,color: Colors.white,),
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
                         fontWeight: FontWeight.w400,
                         color: Colors.white
                        )
                      )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.03,
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
                         fontWeight: FontWeight.w400,
                         color: Colors.white
                        )
                      )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.03,
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
                         fontWeight: FontWeight.w400,
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
                         fontWeight: FontWeight.w400,
                         color: Colors.white
                        )
                      )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.03,
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
                         fontWeight: FontWeight.w400,
                         color: Colors.white
                        )
                      )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.03,
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
                         fontWeight: FontWeight.w400,
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
                       Text("Menu of place", style: TextStyle(
                         fontSize: 14,
                         fontWeight: FontWeight.w400,
                         color: Colors.white
                        )
                      )
                     ], 
                    ),
                    SizedBox(
                          height: MediaQuery.of(context).size.height*0.01,
                        ),
                    Row(
                                children: [
                                  Icon(
                                    Icons.add_box_rounded,
                                    size:80,
                                    color: Colors.white54,
                                  ),
                                ],
                              ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.002,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text("Connect Social Media", style: TextStyle(
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
                         fontWeight: FontWeight.w400,
                         color: Colors.white
                        )
                      )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.03,
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
                                Text("Youtube", style: TextStyle(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                         color: Colors.white
                        )
                      )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.03,
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
                         fontWeight: FontWeight.w400,
                         color: Colors.white
                        )
                      )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.03,
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
                                Text("Twitter", style: TextStyle(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
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
                       Text("Add Promoter", style: TextStyle(
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
                                Text("Add", style: TextStyle(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                         color: Colors.white
                        )
                      )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.03,
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
                                Text("Add", style: TextStyle(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                         color: Colors.white
                        )
                      )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    // Spacer(),
                    SizedBox(
                          height: MediaQuery.of(context).size.height*0.02,
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
                                                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => PropertyAdd()));
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
                                               Navigator.of(context).push(MaterialPageRoute(builder: (context) => PropertyThree()));
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
}