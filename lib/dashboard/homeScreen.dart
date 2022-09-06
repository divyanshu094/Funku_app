import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<HomeScreen> {
  
  

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(-115, 120, 0)..scale(0.75)..rotateY( 0.6),  
      duration: Duration(milliseconds: 250),
      
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(40)
      ),
      child: Column(
        children: [
          Row(
            children: [
              
              IconButton(
                onPressed: (){
                  
                  
                }, 
                icon: Icon(Icons.menu)
              )
            ],
          )
        ],
      ),
      );
  }
}