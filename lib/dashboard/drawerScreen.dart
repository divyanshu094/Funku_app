import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25, right: 20),
      color: Colors.deepPurpleAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              CircleAvatar(),
              SizedBox(
                width: 15,
              ),
              Text("JATIN PRATAP SINGH",style:TextStyle(color :Colors.white)),
              Spacer(),
              Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 170),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: drawerItems.map((element) => Row(
                children: [
                  Icon(element['icon'],color: Colors.white38,size: 47,),
                  SizedBox(
                    width: 10,
                  ),
                  Text(element['title'],style:TextStyle(color :Colors.white, fontSize: 16)),
                  SizedBox(
                    height: 70,
                  )
                ],
              )).toList(),
              
            ),
          ),
          Row(),
          Row(
            children: [],
          ),
          Row(
            children: [
              
            ],
          ),
          // Row()
        ],
      ),
    );
  }
}
List<Map> drawerItems = [
  {
    'icon': Icons.circle,
    'title' : 'Add profile'
  },
  {
    'icon': Icons.circle,
    'title' : 'Refer & Earn'
  },
  {
    'icon': Icons.circle,
    'title' : 'Party History'
  },
  {
    'icon': Icons.circle,
    'title' : 'Help'
  },
  {
    'icon': Icons.circle,
    'title' : 'Sign Out'
  },
];