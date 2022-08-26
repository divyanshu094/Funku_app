import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PromoterTwo extends StatefulWidget {
  const PromoterTwo({ Key? key }) : super(key: key);

  @override
  State<PromoterTwo> createState() => _BaseModelState();
}

class _BaseModelState extends State<PromoterTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Step2(),
    );
  }
}

class Step2 extends StatefulWidget {
  const Step2({ Key? key }) : super(key: key);

  @override
  State<Step2> createState() => _BodyState();
}

class _BodyState extends State<Step2> {
  bool boxvalue =false;
  final items = ['+91','+01','+02','+03'];
  String value = '+91';
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
                         Text("Profile Picture", style: TextStyle(
                           fontSize: 14,
                           fontWeight: FontWeight.w400,
                           color: Colors.white
                          )
                        )
                       ], 
                      ),
                      SizedBox(
                            height: MediaQuery.of(context).size.height*0.001,
                          ),
                      Row(
                        children:
                          [
                            Icon(
                              Icons.add_box_rounded,
                              size:82,
                              color: Colors.white54,
                            ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.015,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Text("Cover Image", style: TextStyle(
                           fontSize: 14,
                           fontWeight: FontWeight.w400,
                           color: Colors.white
                          )
                        )
                       ], 
                      ),
                      SizedBox(
                            height: MediaQuery.of(context).size.height*0.001,
                          ),
                      Row(
                        children:
                        [
                          Icon(
                            Icons.add_box_rounded,
                            size:82,
                            color: Colors.white54,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Text("Images of Artist performing", style: TextStyle(
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
                      height: MediaQuery.of(context).size.height*0.036,
                    ),
                    
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Additional Features", style: TextStyle(
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
                                      width:  MediaQuery.of(context).size.width*0.27,
                                      child: Text("Open to Travel", style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white
                                        )
                                      ),
                                    ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.02,
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
                                      width:  MediaQuery.of(context).size.width*0.35,
                                      child: Text("Celebrity Promoter", style: TextStyle(
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Enter Business Mobile No", style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white
                                    )
                                  )
                                ], 
                              ),
                              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width*0.15,
                        child: DropdownButtonFormField( 
                                
                                decoration: InputDecoration( 
                                  
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
                                      onChanged: (value) => setState(() =>this.value = (value as String?)!),),
                      ),
                      SizedBox(
                        height: 40,
                        width:  MediaQuery.of(context).size.width*0.68,
                        child: TextFormField(
                        style: TextStyle( color: Colors.white, fontWeight: FontWeight.w700,fontSize: 20 ),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.left,
                        
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          // ignore: prefer_const_constructors
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.digitsOnly,
                        ],      
                    ),
                       )

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
                                      child: Text("Show on profile", style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white
                                        )
                                      ),
                                    ),
                                ],
                              ),
                              SizedBox(
                        height: MediaQuery.of(context).size.height*0.025,
                      ),
                      Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Enter Business Email ID", style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white
                                    )
                                  )
                                ], 
                              ),
                              SizedBox(
                                 height: MediaQuery.of(context).size.height*0.001,
                              ),
                              SizedBox(
                                height: 35,
                                child: TextFormField(
                                  style: TextStyle( color: Colors.white, fontWeight: FontWeight.w500,fontSize: 14 ),
                                  textAlign: TextAlign.left,
                                  
                                  decoration: InputDecoration(
                                    // label: Text('E-mail'),
                                    // labelStyle: TextStyle(color: Colors.white70),
                                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                  ) ,
                                ),
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
                                      child: Text("Show on profile", style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white
                                        )
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
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),
        ),
      );
}