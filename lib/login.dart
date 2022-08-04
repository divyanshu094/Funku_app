import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:funku/first_page.dart';
import 'package:funku/sign_up.dart';
import 'package:funku/verify_login.dart';

import 'components/sign.dart';

class LogIn extends StatefulWidget {
  const LogIn({ Key? key }) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
  final items = ['+91','+01','+02','+03'];
  String value = '+91';
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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => FirstScreen()));
          },icon: const Icon(Icons.arrow_back_ios_outlined)),
          elevation: 0,
        ),
        body: Stack(children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02, right: 25,left: 25),
             child: Column(
               children: [
                
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: const [
                     Text("Login",style: TextStyle(
                       color: Colors.white,
                       fontSize: 28,
                       fontWeight: FontWeight.bold,
                     ),)
                   ],
                 ),
                
                 SizedBox(
                  height: 45,
                 ),
                 Row(
                  children: const [
                    Text("Enter Your Mobile Number*",style: TextStyle(
                       color: Colors.white,
                       fontSize: 14,
                       fontWeight: FontWeight.w400
                     ),)
                  ],
                 ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 58,
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
                        height: 58,
                        width:  MediaQuery.of(context).size.width*0.71,
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
                //  Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //      children: [
                //        Container(
                         
                //         height: 56,
                //         width:  MediaQuery.of(context).size.width*0.16,
                        
                //         child: DropdownButton(
                //           hint: Text("+91",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),),
                //           items: items.map(buildMenuItem).toList(),
                //                 onChanged: (value) => setState(() =>this.value = value as String?),
                //         dropdownColor: Color.fromARGB(255, 32, 9, 99),
                //         focusColor: Colors.white,iconEnabledColor: Colors.white,
                //         style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w600),
                        
                          
                //         ),
                //        ),
                //        SizedBox(
                //         height: 58,
                //         width:  MediaQuery.of(context).size.width*0.72,
                //         child: TextFormField(
                //         style: TextStyle( color: Colors.white, fontWeight: FontWeight.w700,fontSize: 20 ),
                //         keyboardType: TextInputType.number,
                //         textAlign: TextAlign.left,
                        
                //         // ignore: prefer_const_constructors
                //         decoration: InputDecoration(
                //           // ignore: prefer_const_constructors
                //           enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                //         ),
                //         inputFormatters: [
                //           LengthLimitingTextInputFormatter(10),
                //           FilteringTextInputFormatter.digitsOnly,
                //         ],
                      
                //     ),
                //        )
                //      ],
                //    ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.38,
                 ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("(We will send a 4 digit OTP to verify)", style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    ),),
                  ],
                 ), 
                 SizedBox(
                  height: 10,
                 ),
                 
                  SizedBox(
                    height: 48,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(60),
                          side: BorderSide(width: 2,color: Colors.white),
                          shape: StadiumBorder(),
                          primary: Colors.white,
                        ),
                        onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => VerifyLogin()));
                            }, child: Text("Login",style: TextStyle(
                color: Color.fromARGB(255, 32, 9, 99),
                fontSize: 16,
                fontWeight: FontWeight.bold )),
                ),
                  ),
                 SizedBox(
                  height: 20,
                 ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do not have a account?", style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    ),),
                  ],
                 ),
                 TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.fromHeight(40),
                        textStyle: TextStyle(fontSize: 14 ,fontWeight: FontWeight.w500)
                        
                      ),
                      onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
                          }, child: Text("SIGNUP",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold)),
                ),


                   Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                    Text("or", style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                
              ),),
              ],
            ),  
             SizedBox(
                      height: 10,
                    ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocalIcon(
                        iconSrc: "assets/combinedShape4.svg",
                        press: () {},
                      ),
                       SocalIcon(
                        iconSrc: "assets/combinedShape3.svg",
                        press: () {},
                      ),
                       SocalIcon(
                        iconSrc: "assets/combinedShape2.svg",
                        press: () {},
                      )
                      
                    ],
                   )
               ],
             ),
            ), 
          )
        ]),
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