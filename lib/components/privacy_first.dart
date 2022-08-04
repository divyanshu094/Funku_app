import 'package:flutter/material.dart';
import 'package:funku/first_page.dart';
import 'package:google_fonts/google_fonts.dart';

class PriPolicy extends StatelessWidget {
  const PriPolicy({ Key? key }) : super(key: key);

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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => FirstScreen()));
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
                     Text("Privacy Policy", style: GoogleFonts.merriweather(
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
                    child: Text("FunkU takes data privacy seriously. This privacy policy explains who we are, how we collect, share and use Personal Information, and how you can exercise your privacy rights.",
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
                    child: Text("We recommend that you read this privacy policy in full to ensure you are fully informed. However, to make it easier for you to review the parts of this privacy policy that apply to you, we have divided up the document into sections that are specifically applicable to Members (Section 2), Contacts (Section 3), and Visitors (Section 4). Sections 1 and 5 are applicable to everyone.",
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
                    child: Text("If you have any questions or concerns about our use of your Personal Information, then please contact us using the contact details provided at the end of Section 5.",
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
                    child: Text("To the extent we provide you with notice of different or additional privacy policies, those policies will govern such interactions.",
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