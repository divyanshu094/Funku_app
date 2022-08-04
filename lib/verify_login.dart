import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:funku/login.dart';
import 'package:funku/persionaldetails.dart';

class VerifyLogin extends StatelessWidget {
  const VerifyLogin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      
    );
  }
}

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LogIn()));
          },icon: Icon(Icons.arrow_back_ios_outlined)),
          elevation: 0,
        ),
        body: Stack(
          children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02, right: 25,left: 25),
             child: Column(
               children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Verify OTP",style: TextStyle(
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
                    Text("We have sent a 4 digit otp to",style: TextStyle(
                       color: Colors.white,
                       fontSize: 12,
                       fontWeight: FontWeight.w400
                     ),),
                  ]
                 ),
                 Row(
                  children: [
                    Text("+91 8448970875    ",style: TextStyle(
                       color: Colors.white,
                       fontSize: 14,
                       fontWeight: FontWeight.w700
                     ),),
                     IconButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LogIn()));
          },icon: Icon(Icons.verified_rounded,color: Colors.white,)),
                  ]
                 ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 68,
                      width: 66,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        // style: Theme.of(context).textTheme.headline3,
                        style: TextStyle( color: Colors.white, fontWeight: FontWeight.w700,fontSize: 40 ),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 66,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: TextStyle( color: Colors.white, fontWeight: FontWeight.w700,fontSize: 40 ),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 66,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: TextStyle( color: Colors.white, fontWeight: FontWeight.w700,fontSize: 40 ),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          // ignore: prefer_const_constructors
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 66,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: TextStyle( color: Colors.white, fontWeight: FontWeight.w700,fontSize: 40 ),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                  ],
                 ),
                  SizedBox(
                  height: 10,
                 ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Didn't recive the OTP?", style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    ),),
                  
                    Text("RESEND", style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                    ),),
                  ],
                 ),
                 SizedBox(
                  height: MediaQuery.of(context).size.height*0.5,
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
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PersonalDelails()));
                            }, child: Text("Verify",style: TextStyle(
                color: Color.fromARGB(255, 32, 9, 99),
                fontSize: 16,
                fontWeight: FontWeight.bold )),
                ),
                  ),
               ],
             ),
            ), 
          )
        ]
        ),
      ),
    );
  }
}