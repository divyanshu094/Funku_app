import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseModel extends StatefulWidget {
  const BaseModel({ Key? key }) : super(key: key);

  @override
  State<BaseModel> createState() => _BaseModelState();
}

class _BaseModelState extends State<BaseModel> {
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
                  
                  
                  
                ],
              
              )
            
        ),
            ),
    );
  }
}