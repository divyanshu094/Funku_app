

import 'package:flutter/material.dart';
import 'package:funku/choose_an_avatar.dart';
import 'package:funku/dashboard.dart';
import 'package:funku/pd_birthday.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/pd.dart';


class PersonalDelails extends StatefulWidget {
  const PersonalDelails({ Key? key }) : super(key: key);

  @override
  State<PersonalDelails> createState() => _PersonalDelailsState();
}

class _PersonalDelailsState extends State<PersonalDelails> {
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
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp()));
          },icon: Icon(Icons.arrow_back_ios_outlined)),
          elevation: 0,
        ),
        body: Padding(padding: const EdgeInsets.only(left: 28,right: 28,top: 10),
        child: Column(
          children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Text("Personal details", style: GoogleFonts.merriweather(
                       fontSize: 26,
                       fontWeight: FontWeight.normal,
                       color: Colors.white
                       )
                     )
                  ], 
                ),
                SizedBox(
                          height: 12,
                        ),
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                       SizedBox(
                        child:  AvatarIcon(
                        iconSrc: "assets/combinedShape.svg",
                        press: () {},
                      ),
                       ),
                        // Icon(Icons.account_circle_rounded,size: MediaQuery.of(context).size.height*0.13,color: Colors.white70,),
                       
                        Text("Upload an image",style: TextStyle( color: Colors.white, fontWeight: FontWeight.normal,fontSize: 10 ),),
                        SizedBox(
                          height: 2,
                        ),
                        Text("or",style: TextStyle( color: Colors.white, fontWeight: FontWeight.normal,fontSize: 10 ),),
                        TextButton(onPressed: () {
                             Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChooseAvatar()));
                          }, 
                          child: Text("Choose an avatar",style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300,fontSize: 10,decoration: TextDecoration.underline ),),),
                        SizedBox(
                          height: 25,
                        ),
                        TextField(
                        style: TextStyle( color: Colors.white, fontWeight: FontWeight.normal,fontSize: 14 ),
                        
                        textAlign: TextAlign.left,
                        
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          labelText: "Enter your full name*",
                          labelStyle: TextStyle(color: Colors.white70),
                          // ignore: prefer_const_constructors
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        ) ,
                        
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                        style: TextStyle( color: Colors.white, fontWeight: FontWeight.normal,fontSize: 14 ),
                        
                        textAlign: TextAlign.left,
                        
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          labelText: "Enter your Email id*",
                          labelStyle: TextStyle(color: Colors.white70),
                          // ignore: prefer_const_constructors
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        ) ,
                        controller: controller,
                        ),
                        SizedBox(
                  height: MediaQuery.of(context).size.height*0.32,
                 ),
                //  ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     onSurface: Colors.white
                //   ),
                //   onPressed: isButtonActive
                //   ? () {
                //     setState(() =>isButtonActive=false);
                //   }
                //   : null, child: Text("next")),
                  SizedBox(
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
                        onPressed: isButtonActive ?
                        () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PdBirthday()));
                            } : null,
                             child: Text("Next",style: TextStyle(
                color: Color.fromARGB(255, 32, 9, 99),
                fontSize: 20,
                fontWeight: FontWeight.bold )),
                ),
                  ),
                      ],
                    ),
                  ),
                )
          ],
        ),),
      )
    );
  }
}