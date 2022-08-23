import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ComP extends StatelessWidget {
  const ComP({ Key? key }) : super(key: key);

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
          elevation: 0,
        ),
        body: Stack(
          children: [
            Padding(padding: const EdgeInsets.all(10)),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.5,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.check_circle,size: MediaQuery.of(context).size.height*0.2,color: Colors.white54,)
                  ],
                ),
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Account Creatrd",style: GoogleFonts.merriweather(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                  ),
                ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Successfully",style: GoogleFonts.merriweather(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                  ),
                ],
          ),
              ],
            ),
            Container(
              height:  MediaQuery.of(context).size.height*0.89,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset('compLogo.svg')
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