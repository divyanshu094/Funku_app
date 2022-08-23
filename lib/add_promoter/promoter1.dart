// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:funku/add_artist/artist1.dart';
import 'package:google_fonts/google_fonts.dart';

class PromoterAdd extends StatefulWidget {
  const PromoterAdd({ Key? key }) : super(key: key);

  @override
  State<PromoterAdd> createState() => _BaseModelState();
}

class _BaseModelState extends State<PromoterAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Promoter(),
    );
  }
}

class Promoter extends StatefulWidget {
  const Promoter({ Key? key }) : super(key: key);

  @override
  State<Promoter> createState() => _BodyState();
}

class _BodyState extends State<Promoter> {
  final itemscity = ['city 1','city 2','city 3','city 4'];
  String? valuecity;
  final itemsState = ['state 1','state 2','state 3','state 4'];
  String? valueState;
  bool? _listTileCheckbox = false;
  @override
  Widget build(BuildContext context) {
    var listTileCheckBox;
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
                child: 
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("Add a Promoter", style: GoogleFonts.merriweather(
                           fontSize: 24,
                           fontWeight: FontWeight.bold,
                           color: Colors.white
                          )
                        )
                       ], 
                       
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.04,
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
                                labelText: "Name of Promoter",
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
                                labelText: "About Promoter",
                                labelStyle: TextStyle(color: Colors.white70),
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                              ) ,
                            ),
                            SizedBox(
                               height: MediaQuery.of(context).size.height*0.02,
                            ),
                            Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
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
                              
                              SizedBox(
                                width: MediaQuery.of(context).size.width*0.04,
                              ),
                              Expanded(
                                child: DropdownButtonFormField( 
                                  isExpanded: true,
                                  decoration: InputDecoration( 
                                    labelText: "Select satate",
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
                              
                            ],
                          ),
                            SizedBox(
                               height: MediaQuery.of(context).size.height*0.05,
                            ),
                           Row(
                             children: [
                               MyCheckBox(listTileCheckBox: _listTileCheckbox,),
                               MyCheckBox(listTileCheckBox: _listTileCheckbox,),
                             ],
                           ),
                           MyCheckBox(listTileCheckBox: _listTileCheckbox,),
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
                                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ArtistAdd()));
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
class MyCheckBox extends StatefulWidget {
  MyCheckBox({Key? key, required this.listTileCheckBox}) : super(key: key);
  bool? listTileCheckBox; //To access this variable we use widget. in state class below

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Align(
      //Use Align so that our Container does not get all width as it happens in ListView
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(
              checkColor: Colors.green,
              activeColor: Colors.white,
              value: widget.listTileCheckBox,
              onChanged: (val) {
                setState(() => widget.listTileCheckBox = val);
              },
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Text("Top Product"),
            ),
          ],
        ),
      ),
    );
  }
}