import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:funku/components/privacy_first.dart';
import 'package:funku/first_page.dart';
import 'package:funku/login.dart';
import 'package:funku/privacy.dart';
import 'package:funku/terms.dart';
import 'package:funku/verify.dart';

import 'components/sign.dart';
class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
  bool boxvalue =false;
  bool isButtonActive = false;
  late TextEditingController controller;
  @override
  void initState() {
    super.initState();

    controller = TextEditingController();
    controller.addListener(() { 
      final isButtonActive = controller.text.isNotEmpty;
      setState(() => this.isButtonActive = isButtonActive);
    });
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }
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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => FirstScreen()));
          },icon: Icon(Icons.arrow_back_ios_outlined)),
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
                   children: [
                     Text("Signup",style: TextStyle(
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
                  children: [
                    Text("Enter Your Mobile Number*",style: TextStyle(
                       color: Colors.white,
                       fontSize: 14,
                       fontWeight: FontWeight.w400
                     ),)
                  ],
                 ),
                 SizedBox(
                  height:3,
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
                        controller: controller,
                    ),
                       )

                    ],
                  ),
                    
                    //  TextFormField(
                        
                    //     style: TextStyle( color: Colors.white, fontWeight: FontWeight.w700,fontSize: 20 ),
                    //     keyboardType: TextInputType.number,
                    //     textAlign: TextAlign.left,
                        
                    //     // ignore: prefer_const_constructors
                    //     decoration: InputDecoration(
                    //       // ignore: prefer_const_constructors
                    //       enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    //       prefix: Padding(
                    //         padding: EdgeInsets.symmetric(horizontal: 8),
                    //         child: Text("+91",style: TextStyle( color: Colors.white, fontWeight: FontWeight.w700,fontSize: 20 ),),
                    //       )
                    //     ),
                    //     inputFormatters: [
                    //       LengthLimitingTextInputFormatter(10),
                    //       FilteringTextInputFormatter.digitsOnly,
                    //     ],
                    //   ),
                 SizedBox(
                  height: 10,
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
                       height: 20,
                       // width:  MediaQuery.of(context).size.width*0.5,
                       child: RichText(
              text: TextSpan(
                  text: 'By proceeding, you agree to our ',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                      text: 'Terms of Service ',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () =>  Navigator.of(context).push(MaterialPageRoute(builder: (context) => TermsCond()))
                    ),
                    TextSpan(
                  text: 'and ',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),)
                  ]),
            ),

                     ),
                    //  SizedBox(
                    //    height: 20,
                    //    // width:  MediaQuery.of(context).size.width*0.32,
                    //    child: TextButton(onPressed: () {
                    //         Navigator.of(context).push(MaterialPageRoute(builder: (context) => TermsCond()));
                    //       }, 
                    //    child: 
                    //    Text("Terms of services ", style: TextStyle(
                    //        color: Colors.white,
                    //        fontSize: 13,
                    //        fontWeight: FontWeight.bold
                    //    ),
                    //    ),
                    //   )
                    //  ),
                   ],
                 ),

                 Row(
                  
                  children: [
                    SizedBox(
                      height: 20,
                      width: MediaQuery.of(context).size.width*0.1,
                    ),
                    SizedBox(
                      height: 18,

                      child: RichText(
              text: TextSpan(
                  text: '',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                      text: 'Privacy Policy',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () =>  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PrivacyPolicy())),
                    )
                  ]),
            ),
                    ),
                   
                  ],
                 ),
                 SizedBox(
                  height: MediaQuery.of(context).size.height*0.31,
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
                          // side: BorderSide(width: 2,color: Colors.white),
                          shape: StadiumBorder(),
                          primary: Colors.white,
                          onSurface: Colors.white,
                        ),
                        onPressed: isButtonActive ? boxvalue ?
                        () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => VerifyPage()));
                            } : null : null, child: Text("Continue",style: TextStyle(
                color: Color.fromARGB(255, 32, 9, 99),
                fontSize: 16,
                fontWeight: FontWeight.bold )),
                ),
                  ),
                 SizedBox(
                  height: 25,
                 ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have a account?", style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    ),),
                  ],
                 ),
                 TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.fromHeight(40),
                        textStyle: TextStyle(fontSize: 15 ,fontWeight: FontWeight.w500)
                        
                      ),
                      onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LogIn()));
                          }, child: Text("LOGIN",style: TextStyle(
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
   Widget buildCheckbox() => Checkbox(
      value: boxvalue, 
    onChanged: (boxvalue){

    }
    );

   DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),
        ),
      );
}