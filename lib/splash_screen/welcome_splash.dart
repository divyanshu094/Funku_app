import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:funku/first_page.dart';

class WelcomeSplash extends StatefulWidget {
  const WelcomeSplash({Key? key}) : super(key: key);

  @override
  State<WelcomeSplash> createState() => _WelcomeSplashState();
}

class _WelcomeSplashState extends State<WelcomeSplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds:1500),);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FirstScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContinueCode(),
    );
  }
}
class ContinueCode extends StatelessWidget {
  const ContinueCode({Key? key}) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
    return  Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.png'), fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
        child:
         Container(
          height:MediaQuery.of(context).size.height*0.89,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('group3@3x.png'),
              SvgPicture.asset('2022FunkU.svg')
            ],
          ),
          
          ),
         
      ),
      
      ),
      
      );
  }
}
