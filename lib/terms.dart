import 'package:flutter/material.dart';
import 'package:funku/sign_up.dart';
import 'package:funku/verify_login.dart';
import 'package:google_fonts/google_fonts.dart';
class TermsCond extends StatelessWidget {
  const TermsCond({ Key? key }) : super(key: key);

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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
          },icon: Icon(Icons.arrow_back_ios_outlined)),
          elevation: 0,
        ),
        body: 
              Padding(padding: const EdgeInsets.all(28),
              child:Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Terms and Conditons", style: GoogleFonts.merriweather(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
                    )
                   ], 
                   
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.04,
                  ),
                  Container(
                    child: 
                    Text("A Terms and Conditions agreement acts as legal contracts between you (the company) who has the website or mobile app, and the user who accesses your website/app.",
                    style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12.9,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.015,
                  ),
                  Container(
                    child: Text("Having a Terms and Conditions agreement is completely optional. No laws require you to have one. Not even the super-strict and wide-reaching General Data Protection Regulation (GDPR).",
                    style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12.9,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.015,
                  ),
                  Container(
                    child: Text("Your Terms and Conditions agreement will be uniquely yours. While some clauses are standard and commonly seen in pretty much every Terms and Conditions agreement, it's up to you to set the rules and guidelines that the user must agree to.",
                    style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12.9,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.015,
                  ),
                  Container(
                    child: Text("You can think of your Terms and Conditions agreement as the legal agreement where you maintain your rights to exclude users from your app in the event that they abuse your app, where you maintain your legal rights against potential app abusers, and so on.",
                    style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12.9,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.015,
                  ),
                  Container(
                    child: Text("Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable, practically speaking.",
                    style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12.9,
                      ),
                      ),
                  ),
                  
                ],
              
              )
            
        ),
            ),
    );
  }
}